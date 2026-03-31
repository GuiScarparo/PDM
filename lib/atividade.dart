import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp deve aparecer apenas uma vez no topo
    return const MaterialApp(home: ContadorTela());
  }
}

class ContadorTela extends StatefulWidget {
  const ContadorTela({super.key});

  @override
  State<ContadorTela> createState() => _ContadorTelaState();
}

class _ContadorTelaState extends State<ContadorTela> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }

  void decrementar() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // 1. O Container com a imagem vem PRIMEIRO para cobrir a tela toda
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/fundo.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        // 2. Deixamos o Scaffold transparente para a imagem aparecer
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Minha tela'),
          centerTitle: true,
          backgroundColor:
              Colors.black45, // Um fundo semi-transparente no AppBar fica legal
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.favorite, size: 150, color: Colors.red),
              const SizedBox(height: 20),
              Text(
                "Curtida👍: $contador",
                // Cor branca no texto ajuda a ler sobre a imagem
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: incrementar,
                    child: const Text("Curtir"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: decrementar,
                    child: const Text("Descurtir👎 "),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
