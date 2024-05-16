import 'package:flutter/material.dart';
import 'categories_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo a suas Receitas',style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontStyle: FontStyle.italic),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true, // Adicione esta linha para que o corpo do Scaffold se estenda atrás da AppBar
      body: Stack(
        children: [
          // Positioned.fill ensures the image covers the entire screen
          Positioned.fill(
            child: Image.asset(
              'assets/images/bolo2.jpg', // Path to your image asset
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CategoriesScreen.routeName);
              },
              child: Text('Começar a Explorar'),
            ),
          ),
        ],
      ),
    );
  }
}
