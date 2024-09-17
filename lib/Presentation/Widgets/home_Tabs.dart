import 'package:flutter/material.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(25),
        ),
        child: TabBar(
          dividerHeight: 0,
          overlayColor: WidgetStateColor.transparent,
          indicator: BoxDecoration(
            color: Colors.white.withOpacity(0.95),
            borderRadius: BorderRadius.circular(25),
          ),
          labelPadding: const EdgeInsets.all(2),
          labelStyle:
              const TextStyle(fontWeight: FontWeight.bold),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          tabs: const [
            TabItems(title: "Today", count: 4),
            TabItems(title: "  Learning Plan", count: 6)
          ],
        ),
      ),
    );
  }
}


class TabItems extends StatelessWidget {
  const TabItems({super.key, required this.title, required this.count});
  final String title;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        count > 0
            ? Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      count > 9 ? '9+' : count.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              )
            : const SizedBox(
                height: 0,
                width: 0,
              )
      ]),
    );
  }
}
