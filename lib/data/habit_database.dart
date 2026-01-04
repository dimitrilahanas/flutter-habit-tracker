import 'package:hive_flutter/hive_flutter.dart';
import 'package:repeated_habit_tracker/model/habit.dart';
import 'package:repeated_habit_tracker/util/datetime_format.dart';

late Box _myBox;

class HabitDatabase {
  final _myBox = Hive.box("Habit_Database");
  List<Habit> todaysHabitList = [];

  String getTodayKey() {
    return hiveKeyForDate(DateTime.now());
  }

  void createDefaultData() {
    todaysHabitList = [
      Habit("Homework", false),
      Habit("Go for a run", false),
    ];
  }

  void loadData() {
  final savedToday = _myBox.get(getTodayKey());

  if (savedToday != null) {
    todaysHabitList = (savedToday as List)
        .map((item) => item as Habit)
        .toList();
  } else {
    createDefaultData();
    updateDatabase();
  }
}

  void updateDatabase() {
    _myBox.put(getTodayKey(), todaysHabitList);
  }
}