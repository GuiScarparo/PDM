
import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TelaController());
  }
}

class TelaController extends StatefulWidget {
  const TelaController({super.key});

  @override
  State<TelaController> createState() => _TelaController();
}

class _TelaController extends State<TelaController> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo TextEditingController")),
      body: Column(
        children: [
          // TextField simples//
          //sem validação//
          TextField(controller: controller),

          SizedBox(height: 20),
          
          ElevatedButton(
            onPressed: () {
              // Ação do botão para TextField
              print(controller.text);
            },
            child: Text("Mostrar"),
          ),
        ],
      ),
    );
  }
}
