import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
   final theme = Theme.of(context);
    return  Scaffold(
      backgroundColor: Colors.white10.withOpacity(0.1),
      body: Center(
        child: Text("SETTINGS ",
        style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}