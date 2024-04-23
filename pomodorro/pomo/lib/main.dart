import 'package:flutter/material.dart';
import 'package:pomo/pomodoroscreen.dart';
import 'package:pomo/timerservice.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: PomodoroScreen());
  }
}
