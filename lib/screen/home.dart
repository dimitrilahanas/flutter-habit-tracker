import 'package:flutter/material.dart' hide kToolbarHeight;
import 'package:repeated_habit_tracker/util/constants.dart';
import 'package:repeated_habit_tracker/widget/welcome_back_messsage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarsHeight,
        centerTitle: kCenterTitle,
        titleSpacing: kTitleSpacing,
        title: WelcomeBackMesssage(userName: 'Dimitrios'),
      ),
    );
  }
}