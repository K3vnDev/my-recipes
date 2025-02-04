import 'package:my_recipes/models/difficulty.dart';

class Recipe {
  String title;
  String desc;
  int time;
  Difficulty difficulty;

  Recipe(
      {required this.title,
      required this.desc,
      required this.time,
      required this.difficulty});
}
