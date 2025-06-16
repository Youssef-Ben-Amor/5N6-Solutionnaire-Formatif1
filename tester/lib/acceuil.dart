import 'package:flutter/material.dart';
import 'package:tester/tirroir_nav.dart';

void main() {
  runApp(const PasSiSimpleApp());
}

class PasSiSimpleApp extends StatelessWidget {
  const PasSiSimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Acceuil',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Calcul de la largeur de l'écran avec un padding de 10 pixels

    return Scaffold(
      drawer: const LeTiroir(),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text(
          'Acceuil',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      'Bleu 1/3',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      'Rouge 2/3',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex : 1,
                  child : Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text(
                    'Vert',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child : Container(
                      color: Colors.yellow,
                      alignment: Alignment.center,
                      child: Text(
                        ''
                            'Jaune',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Expanded(
              flex: 1,
              child: Container(
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text(
                  'Orange 1/4',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
              ),
            ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.pink,
                    alignment: Alignment.center,
                    child: Text(
                      'Rose 1/4',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}