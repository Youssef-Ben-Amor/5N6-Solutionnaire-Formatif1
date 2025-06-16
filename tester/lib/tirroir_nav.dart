import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/details.dart';

class LeTiroir extends StatelessWidget {
  const LeTiroir({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: const Text(
              'Mon super tirroir bleu\nYoussef Ben Amor\n2375637',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
          ),
          // ),
          ListTile(
            leading: const Icon(Icons.abc),
            title:  Text('Détails'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const DetailPage()),
                    (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}