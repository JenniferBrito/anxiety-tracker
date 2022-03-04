import 'package:flutter/material.dart';

class CrisisEntry extends StatelessWidget {
  const CrisisEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("entrada de crises"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => print('botão pressionado'),
      ),
    );
  }
}
