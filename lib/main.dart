import 'package:flutter/material.dart';
import 'home_sreen.dart';
import 'categories_screen.dart';
import 'recipes_list_screen.dart';
import 'recipe_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Receitas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
        RecipesListScreen.routeName: (ctx) => RecipesListScreen(),
        RecipeDetailScreen.routeName: (ctx) => RecipeDetailScreen(),
      },
    );
  }
}
