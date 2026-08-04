import 'package:flutter/material.dart';

void main ()=> runApp(MaterialApp(home: TelaPrincipal()));

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela inicial")),
      body: Center(
        child: ElevatedButton(
          child: Text("Ir para a Detalhes"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TelaDetalhes(),
            ),
            );
          },
        )
      )
    ); 
  }
}
class TelaDetalhes extends StatelessWidget {
  const TelaDetalhes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela Detalhes")),
      body: Center(
        child: ElevatedButton(
          child: Text("Voltar para a Tela Inicial"),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      )
    ); 
  }
}
            