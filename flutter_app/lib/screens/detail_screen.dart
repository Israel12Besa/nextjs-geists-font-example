import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String item = ModalRoute.of(context)!.settings.arguments as String? ?? 'Détail';

    return Scaffold(
      appBar: AppBar(
        title: Text('Détail'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Détails pour: \$item',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
