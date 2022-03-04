import 'package:flutter/material.dart';

class CrisisEntry extends StatelessWidget {
  const CrisisEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
          ListTile(
            title: Text('item 1'),
            onTap: () => print('item 1'),
          ),
          ListTile(
            title: Text('item 2'),
            onTap: () => print('item 2'),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => print('botão pressionado'),
      ),
    );
  }
}
