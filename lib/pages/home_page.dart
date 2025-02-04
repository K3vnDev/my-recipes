import 'package:flutter/material.dart';
import 'package:my_recipes/consts/app_colors.dart';
import 'package:my_recipes/models/difficulty.dart';
import 'package:my_recipes/models/recipe.dart';
import 'package:my_recipes/widgets/recipe_tile.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final double gap = 16;
  final List<Recipe> recipes = [
    Recipe(
      title: "Spaghetti Carbonara",
      desc:
          "Un clásico plato de pasta italiano con huevos, queso, panceta y pimienta.",
      time: 25,
      difficulty: Difficulty.medium,
    ),
    Recipe(
      title: "Grilled Cheese Sandwich",
      desc:
          "Un sándwich simple pero delicioso con queso derretido entre pan crujiente.",
      time: 10,
      difficulty: Difficulty.easy,
    ),
    Recipe(
      title: "Beef Wellington",
      desc: "Un plato gourmet con solomillo de ternera envuelto en hojaldre.",
      time: 90,
      difficulty: Difficulty.hard,
    ),
    Recipe(
      title: "Paella Valenciana",
      desc: "Un arroz tradicional español con pollo, conejo y judías verdes.",
      time: 60,
      difficulty: Difficulty.hard,
    ),
    Recipe(
      title: "Tacos al Pastor",
      desc:
          "Tortillas rellenas de cerdo marinado con piña, cebolla y cilantro.",
      time: 45,
      difficulty: Difficulty.medium,
    ),
    Recipe(
      title: "Churros con Chocolate",
      desc: "Dulces fritos crujientes servidos con chocolate caliente espeso.",
      time: 30,
      difficulty: Difficulty.easy,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        title: Text(
          "Mis Recetas",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.darkGrey,
      ),
      body: ListView.separated(
        itemCount: recipes.length,
        itemBuilder: (context, index) => RecipeTile(recipe: recipes[index]),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        separatorBuilder: (context, index) => SizedBox(height: gap),
      ),
    );
  }
}
