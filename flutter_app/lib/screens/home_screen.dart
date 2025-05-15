import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item \${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Bienvenue dans l\'application',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
            child: Text('Remplir un formulaire'),
          ),
          SizedBox(height: 16),
          ...items.map((item) => Card(
            child: ListTile(
              title: Text(item),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, '/detail', arguments: item);
              },
            ),
          )),
        ],
      ),
    );
  }
}
