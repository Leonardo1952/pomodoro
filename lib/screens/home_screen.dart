import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:pomodoro/widget/progress_icons.dart';
import 'package:pomodoro/widget/custom_button.dart';
import 'package:pomodoro/model/pomodoro_status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

const _btnTextStart = 'START POMODORO';
const _btnTextResumePomodoro = 'RESUME POMODORO';
const _btntextResumeBreak = "RESUME BREAK";
const _btnTextStartBreak = 'TAKE SHORT BREAK';
const _btnTextStartLongBreak = 'TAKE LONG BREAK';
const _btnTextStartNewSet = 'START NEWSET';
const _btnTextPause = 'PAUSE';
const _btnTextReset = 'RESET';

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Pomodoro number 2',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Set 3',
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 220.0,
                    lineWidth: 15.0,
                    percent: 0.3,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text(
                      '13:42',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    progressColor: Colors.red,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProgressIcons(
                    total: 4,
                    done: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'status description',
                    style: TextStyle(color: Colors.white),
                  ),
                  CustomButton(
                    onTap: () {},
                    text: 'Start',
                  ),
                  CustomButton(
                    onTap: () {},
                    text: 'Reset',
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
