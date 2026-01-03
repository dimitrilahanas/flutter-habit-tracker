import 'package:flutter/material.dart';

class HabitCreator extends StatelessWidget {
  final VoidCallback saveTap;
  final controller;
  const HabitCreator({
    super.key,
    required this.saveTap,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Create Habit'),
      content: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Enter habit name',
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: saveTap,
          child: const Text('Save'),
        ),
      ],
    );
  }
}