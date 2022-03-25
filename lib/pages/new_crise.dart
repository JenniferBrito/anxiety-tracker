import 'package:anxiety_tracker/database/db_service.dart';
import 'package:flutter/material.dart';

class NewCrise extends StatefulWidget {
  NewCrise({Key? key}) : super(key: key);

  @override
  State<NewCrise> createState() => _NewCriseState();
}

class _NewCriseState extends State<NewCrise> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    DatabaseService dbService = DatabaseService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova crise'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Entre com o gatilho'),
              ),
              TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Entre com os sintomas'),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Entre com a ação'),
              ),
              InputDatePickerFormField(
                  firstDate: DateTime(2015, 1, 1), lastDate: DateTime.now()),
              OutlinedButton(
                autofocus: false,
                clipBehavior: Clip.none,
                child: const Text('Salvar'),
                onPressed: () => _submit(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _submit() {}
