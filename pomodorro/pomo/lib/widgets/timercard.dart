import 'package:flutter/material.dart';
import 'package:pomo/timerservice.dart';
import 'package:pomo/utils.dart';
import 'package:provider/provider.dart';

class TimerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final seconds = provider.currentDuration % 60;
    return Column(
      children: [
        Text(
          "${provider.currentState}",
          style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontFamily: 'Montserrat',
              color: Colors.white),
        ), // Text
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(0, 2)) // BoxShadow
                  ]), // BoxDecoration
              child: Center(
                child: Text(
                  (provider.currentDuration ~/ 60).toString(),
                  style: textStyle(
                      70, renderColor(provider.currentState), FontWeight.bold),
                ), // Text
              ),
            ), // Container
            SizedBox(width: 10),
            Text(
              ":",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: renderColorColon(provider.currentState)),
            ), // Text
            SizedBox(width: 10),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: Offset(0, 2)) // BoxShadow
                  ]), // BoxDecoration
              child: Center(
                child: Text(
                  seconds == 0
                      ? "${seconds.round()}0"
                      : seconds.round().toString(),
                  style: textStyle(
                      70, renderColor(provider.currentState), FontWeight.bold),
                ), // Text
              ),
            ), // Container
          ],
        ) // Row
      ],
    ); // Column
  }
}
