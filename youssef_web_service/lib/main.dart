import 'package:flutter/material.dart';
import 'package:youssef_web_service/transfert.dart';

import 'lib_http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Les animaux de mon zoo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  MyHomePage(title: 'Les animaux de mon zoo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
  List<Animal> _animals = [];
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _continentController = TextEditingController();
  final TextEditingController _familleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: _continentController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Continent',
                contentPadding: const EdgeInsets.all(15),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _familleController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Famille',
                contentPadding: const EdgeInsets.all(15),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=> _onSearch(context),
                child:  Text('Rechercher des animaux'),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: widget._animals.length,
                itemBuilder: (context, index) {
                  final animal = widget._animals[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: ListTile(
                      title: Text(animal.nom),
                      subtitle: Text('${animal.espece}'),
                      // Si le continent de l'animal est Océans, on affiche l'icône "water", sinon on affiche l'icône "landscape".
                      leading: Icon(
                        animal.continent == 'Océans' ? Icons.water : Icons.landscape,
                        color: Colors.blue,
                      ),
                    ),
                  );
                },
              ),
            )
          ],

        ),
      )
    );
  }
  void _onSearch (BuildContext context) async {
    final contient = _continentController.text.toLowerCase();
    final famille = _familleController.text.toLowerCase();

    final animals = await getAnimalsParContinentEtFamille(contient, famille);

    print(animals);
    setState(() {
      widget._animals = animals;
    });


  }
}


