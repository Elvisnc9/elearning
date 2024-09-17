import 'package:elearning/Presentation/Pages/Home/homepage.dart';
import 'package:elearning/Presentation/Pages/Message/Message.dart';
import 'package:elearning/Presentation/Pages/Profile/Profile.dart';
import 'package:elearning/Presentation/Pages/Settings/Settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  final List<Widget> screens = const [
    Home(),
    Message(),
    Settings(),
    Profile(),
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent.withOpacity(0.2),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            children: screens,
          ),
          Align(alignment: Alignment.bottomCenter, child: _navbar())
        ],
      ),
    );
  }

  Widget _navbar() {
    List<String> svgicons = [
      "assets/icons/house-chimney-blank.svg",
      "assets/icons/comment-alt-dots.svg",
      "assets/icons/settings (3).svg",
      "assets/icons/user (2).svg",
    ];

    return Container(
      height: 80,
      width: 300,
      margin: const EdgeInsets.only(
        bottom: 24,
        left: 24,
        right: 24,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(color: Colors.black, blurRadius: 30, spreadRadius: 5),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: svgicons.map((svgicon) {
          int index = svgicons.indexOf(svgicon);
          bool isSelected = selectedIndex == index;
          return Material(
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () => onTabTapped(index),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(
                    svgicon,
                    width: 24,
                    colorFilter: ColorFilter.mode(
                      isSelected ? Colors.black : Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
