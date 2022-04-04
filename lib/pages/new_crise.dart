import 'package:anxiety_tracker/database/db_service.dart';
import 'package:anxiety_tracker/models/crise_model.dart';
import 'package:flutter/material.dart';

class NewCrise extends StatefulWidget {
  NewCrise({Key? key}) : super(key: key);

  @override
  State<NewCrise> createState() => _NewCriseState();
}

class _NewCriseState extends State<NewCrise> {
  Crise crise = Crise();
  final _formKey = GlobalKey<FormState>();
  TextEditingController _dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    DatabaseService dbService = DatabaseService();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Nova crise'),
        ),
        body: Form(
          key: _formKey,
          child: Scrollbar(
            child: Align(
              alignment: Alignment.topCenter,
              child: Card(
                  child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1000),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          onSaved: (value) => crise.gatilho = value!,
                          decoration: const InputDecoration(
                            labelText: 'Entre com o gatilho',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const Divider(),
                        TextFormField(
                          onSaved: (value) => crise.sintomas = value!,
                          decoration: const InputDecoration(
                            labelText: 'Entre com os sintomas',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const Divider(),
                        TextFormField(
                          onSaved: (value) => crise.acao = value!,
                          decoration: const InputDecoration(
                            labelText: 'Entre com a ação',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const Divider(),
                        InputDatePickerFormField(
                          fieldLabelText: 'Entre com a data',
                          firstDate: DateTime(2019),
                          lastDate: DateTime.now(),
                          onDateSaved: (value) => crise.date = value,
                        ),
                        OutlinedButton(
                            onPressed: () {
                              print('enviado');
                            },
                            child: Text('Enviar'))
                      ]),
                ),
              )),
            ),
          ),
        ));
  }
}

void _submit() {}
