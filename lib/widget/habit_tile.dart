import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool isChecked;
  final Function(bool?)? onChanged;

  const HabitTile({
    super.key,
    required this.habitName,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15, left: 40, right: 40),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Checkbox(value: isChecked, onChanged: onChanged),
            Text(
              habitName,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
