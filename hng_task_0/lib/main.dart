import 'package:flutter/material.dart';
import 'package:hng_task_0/screens/home_screen.dart';

void main() {
  runApp(const Task0App());
}

class Task0App extends StatelessWidget {
  const Task0App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomeScreen(),
    );
  }
}
