import 'package:flutter/material.dart';
import 'recipes_list_screen.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories';

  @override
  Widget build(BuildContext context) {
    final categories = ['Pratos'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Receita'),
      ),
      body: Stack(
        children: [
          // Positioned.fill ensures the image covers the entire screen
          Positioned.fill(
            child: Image.asset(
              'assets/images/bolo2.jpg', // Path to your image asset
              fit: BoxFit.cover,
            ),
          ),
          ListView.builder(
            itemCount: categories.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text(
                  categories[index],
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    RecipesListScreen.routeName,
                    arguments: categories[index],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
