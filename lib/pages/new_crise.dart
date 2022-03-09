import 'package:flutter/material.dart';

class NewCrise extends StatelessWidget {
  const NewCrise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Voltar')),
      ),
    );
  }
}
