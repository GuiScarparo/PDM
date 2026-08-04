
import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextField vs TextFormField",
      home: TelaComparacao(),
    );
  }
}

class TelaComparacao extends StatefulWidget {
  const TelaComparacao({super.key});

  @override
  State<TelaComparacao> createState() => _TelaComparacao();
}

class _TelaComparacao extends State<TelaComparacao> {
  final controllerSimples = TextEditingController();
  final controllerForm = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField vs TextFormField")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TextField simples//
            //sem validação//
            TextField(
              controller: controllerSimples,
              decoration: InputDecoration(
                labelText: "digite algo",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ação do botão para TextField
                print("Texto do TextField: ${controllerSimples.text}");
              },
              child: Text("Enviar TextField"),
            ),
            SizedBox(height: 40),
            // TextFormField com validação //
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controllerForm,
                    decoration: InputDecoration(
                      labelText: "digite algo",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'campo obrigatório';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Ação do botão para TextFormField
                        print("Texto do TextFormField: ${controllerForm.text}");
                      }
                    },
                    child: Text("Validar Formulario"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
