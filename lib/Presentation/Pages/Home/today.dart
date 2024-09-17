import 'package:elearning/Presentation/Pages/Home/homepage.dart';
import 'package:flutter/material.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          children: [
            TodayLessonCard(
              title: 'SpeakClass\n-Beta',
               index: 'Lesson 1', 
               author: 'assets/Images/man_green.png', 
               authorName: 'By Javier Elvis',
                press: () {},),
        
                 TodayLessonCard(
              title: 'WordWorks\n-Beta',
               index: 'Lesson 2', 
               author: 'assets/Images/man_red.png', 
               authorName: 'By Amir Joseph',
                press: () {},),

                     TodayLessonCard(
              title: 'Verbiage\n-Beta',
               index: 'Lesson 3', 
               author: 'assets/Images/girl_yellow.png', 
               authorName: 'By couach Stephanie',
                press: () {},),

                   TodayLessonCard(
              title: 'Converso\n-Beta',
               index: 'Lesson 4', 
               author: 'assets/Images/man_blue.png', 
               authorName: 'By Emerald David',
                press: () {},),

                     TodayLessonCard(
              title: 'Social Science\n-Beta',
               index: 'Lesson 5', 
               author: 'assets/Images/girl_green.png', 
               authorName: 'By Nancy Walker',
                press: () {},),

                const SizedBox(height: 65,)
          ],
        ),
      ),
    );
  }
}


class TodayLessonCard extends StatelessWidget {
  const TodayLessonCard({
    super.key, required this.title, required this.index, required this.author, required this.authorName, required this.press,
    
  });
  final String title;
  final String index;
  final String author;
  final String authorName;
  final VoidCallback press;


  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Container(
          height: 260,
          width: double.infinity,
          color: Colors.white,
        child: Stack(
          children: [
             Positioned(
              top: -10,
              bottom: 1,
              right: -70,
              child: Image.asset(author),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: CircleButtons(icon: "assets/icons/bookmark.svg", press: () { }, bg:  Colors.transparent.withOpacity(0.4),)
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(index, 
                  style: theme.textTheme.bodySmall ,
                  ),
                Text(
                  title,
                  style: theme.textTheme.bodyLarge,
                ),
                  Text(
              authorName,
                  style: theme.textTheme.titleMedium,
                ),
            
            const SizedBox(height: 20),
            
            FloatingActionButton.extended(
              backgroundColor: Colors.black,
              onPressed: (){}, label: Text(
                "Start Lesson",
                style: theme.textTheme.titleSmall,
              )),
                ],
              ),
            ),
          
           
          ],
        ),
        ),
      ),
    );
  }
}