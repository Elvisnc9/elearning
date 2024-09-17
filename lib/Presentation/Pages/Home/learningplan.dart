import 'package:flutter/material.dart';

class LearningPlan extends StatefulWidget {
  const LearningPlan({super.key});

  @override
  State<LearningPlan> createState() => _LearningPlanState();
}
final List<Map<String, String>> learningData = [
  {
   'authorpix': 'assets/Images/elviznc.jpeg',
            'index': 'Learning 1-2',
            'title': 'LearnSection-b',
           'authorName': 'By Elviznc',
  },
  {
    'authorpix': 'assets/Images/carolina.jpeg',
            'index': 'Learning 1-8',
            'title': 'Nature Study',
           'authorName': 'By Carolina'
  },
  {
  'authorpix': 'assets/Images/evelyn.jpeg',
            'index': 'Learning 1-2',
            'title': 'Anatomy A',
           'authorName': 'By Evelyn'
  },
   {
  'authorpix': 'assets/Images/daniel.jpeg',
            'index': 'Learning 1-5',
            'title': 'Sociology',
           'authorName': 'By Daniel lee'
  },
   {
  'authorpix': 'assets/Images/franklin.jpeg',
            'index': 'Learning 1-2',
            'title': 'Physicology',
           'authorName': 'By Franklin'
  },
     {
  'authorpix': 'assets/Images/girl.jpeg',
            'index': 'Learning 1-6',
            'title': 'Technology',
           'authorName': 'By Alex bailey'
  }
];
 final List<VoidCallback> pressActions = [
    () {
    },
    () {
    },
    () {
    },
     () {
    },
     () {
    },
    () {
    },
  ];

class _LearningPlanState extends State<LearningPlan> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only( bottom: 100, left: 8, right: 8),
        child: Column(
          children:List.generate(learningData.length, (index){
            return LearningCards(
              authorpix:learningData[index] ['authorpix']!,
               index: learningData[index] ['index']!,
                title: learningData[index] ['title']!,
                authorName: learningData[index] ['authorName']!,
                 press: pressActions[index]
                 );
          }) ),
      ),
    );
  }
}






class LearningCards extends StatelessWidget {
  const LearningCards({
    super.key,
    required this.authorpix,
    required this.index,
    required this.title,
    required this.authorName,
    required this.press,
  });
  final String authorpix;
  final String index;
  final String title;
  final String authorName;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
            color: Colors.white12, borderRadius: BorderRadius.circular(25)),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              SizedBox(
                height: 140,
                width: 130,
                child: Image.asset(
                  authorpix,
                fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Text(
                      index,
                      style: theme.textTheme.titleMedium
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      title,
                      style: theme.textTheme.bodySmall
                          ?.copyWith(color: Colors.white),
                    ),
                    Text(
                      authorName,
                      style: theme.textTheme.titleMedium
                          ?.copyWith(color: Colors.grey[500], fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    FloatingActionButton.extended(
                        splashColor: Colors.black12,
                        backgroundColor: Colors.white,
                        onPressed: press,
                        label: Text(
                          "Start Lesson",
                          style: theme.textTheme.titleSmall
                              ?.copyWith(color: Colors.black),
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
