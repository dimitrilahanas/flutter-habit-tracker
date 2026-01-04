import 'package:flutter/material.dart';

class WelcomeBackMesssage extends StatelessWidget {
  final String? userName;

  const WelcomeBackMesssage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Welcome back,',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            userName ?? 'user',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.secondary,
            )
          ),
        ),
      ],
    );
  }
}