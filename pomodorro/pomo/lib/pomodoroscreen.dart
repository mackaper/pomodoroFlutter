import 'package:flutter/material.dart';
import 'package:pomo/widgets/timeoptions.dart';
import 'utils.dart';
import 'widgets/timercard.dart';
import 'widgets/timeoptions.dart';
import 'widgets/timecontroller.dart';
import 'widgets/progresswidget.dart';

class PomodoroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.redAccent,
        centerTitle: false, //aligns the "POMODORO" text to the left
        title: Text(
          'POMODORO',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat',
            color: Colors.white,
          ),
        ), // Text
        actions: [
          IconButton(
            // refresh icon
            icon: Icon(Icons.refresh, color: Colors.white),
            iconSize: 40,
            onPressed: () {},
          ) // IconButton
        ],
      ), // AppBar
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 15),
              TimerCard(),
              SizedBox(height: 40),
              TimeOptions(),
              SizedBox(height: 30),
              TimeController(),
              SizedBox(height: 30),
              ProgressWidget(),
            ],
          ), // Column
        ), // Container
      ), // SingleChildScrollView
    ); // Scaffold
  }
}
