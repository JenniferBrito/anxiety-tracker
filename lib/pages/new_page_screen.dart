import 'package:flutter/material.dart';

class NewPageScreen extends StatelessWidget {
  final String texto;

  const NewPageScreen(this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(texto),
    );
  }
}
