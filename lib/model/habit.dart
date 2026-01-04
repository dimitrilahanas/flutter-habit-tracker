import 'package:hive/hive.dart';

part 'habit.g.dart'; // ← file must be lowercase and in the same folder

@HiveType(typeId: 0)
class Habit {
  @HiveField(0)
  String name;

  @HiveField(1)
  bool isChecked;

  Habit(this.name, this.isChecked);
}
