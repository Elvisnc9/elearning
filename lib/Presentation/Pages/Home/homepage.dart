import 'package:elearning/Presentation/Pages/Home/today.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Widgets/home_Tabs.dart';
import 'learningplan.dart';


class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 0),
          height: 260,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/Images/linepattern.png',
                  ),
                  fit: BoxFit.fill)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                      radius: 35,
                      backgroundImage:
                          AssetImage("assets/Images/profilez.jpeg")),
                  const Spacer(),
                  CircleButtons(
                    icon: 'assets/icons/business-time.svg',
                    press: () {},
                    bg: Colors.white10,
                  ),
                  CircleButtons(
                      icon: 'assets/icons/bell (2).svg',
                      press: () {},
                      bg: Colors.white10)
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "Hello 👋\n"
                "Lucas Romano",
                style: theme.textTheme.titleLarge,
              ),
          
               Padding(
                 padding: const EdgeInsets.only(left: 20, top: 8,),
                 child: FloatingActionButton.extended(
                  splashColor: Colors.black26,
                  extendedPadding: const EdgeInsets.all(30),
                               backgroundColor: Colors.white,
                               onPressed: (){}, label: Text(
                  "Check Your Progress",
                  style: theme.textTheme.titleSmall?.copyWith(color: Colors.black, ),
                               )),
               ),
            ],
          ),
        ),
        const Body2()
      ],
    );
  }
}

class Body2 extends StatefulWidget {
  const Body2({
    super.key,
  });

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Expanded(
        child: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
              backgroundColor: Colors.black12,
              bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(20), child: HomeTabs())),
          body: const Stack(
            children: [
              TabBarView(
                children: [Today(), LearningPlan()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleButtons extends StatelessWidget {
  const CircleButtons({
    super.key,
    required this.icon,
    required this.press,
    required this.bg,
  });
  final String icon;
  final VoidCallback press;
  final Color bg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: bg,
        child: IconButton(
            onPressed: press,
            hoverColor: Colors.white24,
            highlightColor: Colors.white12,
            icon: SvgPicture.asset(
              icon,
              color: Colors.white,
              width: 18,
            )),
      ),
    );
  }
}
