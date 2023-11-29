import 'package:flutter/material.dart';
import 'package:navion/page/calcul.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon App Flutter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => calcul()),
              );
            },
            child: Text('Calcul 1'),
          ),
          SizedBox(height: 20), // Ajoutez un espace vertical entre les boutons
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => calcul()),
              );
            },
            child: Text('Calcul 2'),
          ),
        ],
      ),
    );
  }
}
