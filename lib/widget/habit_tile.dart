import 'package:flutter/material.dart';

class HabitTile extends StatelessWidget {
  final String habitName;
  final bool isCheckboxChecked;
  final Function(bool?)? onCheckboxChanged;
  final Function()? onDeletePressed;

  const HabitTile({
    super.key,
    required this.habitName,
    required this.isCheckboxChecked,
    required this.onCheckboxChanged,
    required this.onDeletePressed,
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
            Checkbox(value: isCheckboxChecked, onChanged: onCheckboxChanged),
            Text(
              habitName,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
            Spacer(),
            IconButton(
              onPressed: onDeletePressed, 
              icon: Icon(Icons.remove_circle),
            ),
          ],
        ),
      ),
    );
  }
}
