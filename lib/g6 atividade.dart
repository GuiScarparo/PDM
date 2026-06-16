import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const IdiomaApp());
}

// - - - - - - - Classe principal - - - - - - -
class IdiomaApp extends StatefulWidget {
  const IdiomaApp({super.key});

  @override
  State<IdiomaApp> createState() => _IdiomaAppState();
}

// - - - - - - - Lógica do aplicativo - - - - - - -
class _IdiomaAppState extends State<IdiomaApp> {
  // false = Português | true = English
  bool isEnglish = false;

  @override
  void initState() {
    super.initState();
    carregarIdioma();
  }

  // - - - Salva o idioma no SharedPreferences - - -
  Future<void> salvarIdioma(bool valor) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ingles', valor);
  }

  // - - - Carrega o idioma salvo - - -
  Future<void> carregarIdioma() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? idiomaSalvo = prefs.getBool('ingles');
    setState(() {
      isEnglish = idiomaSalvo ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // - - - Textos dinâmicos conforme o idioma - - -
    final String titulo        = isEnglish ? "My App"            : "Meu App";
    final String labelIdioma   = isEnglish ? "Language: English" : "Idioma: Português";
    final String labelBotao    = isEnglish ? "Switch to Portuguese" : "Mudar para Inglês";
    final String mensagem      = isEnglish ? "Hello, World!"     : "Olá, Mundo!";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(titulo)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Texto principal
              Text(
                mensagem,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // Label do idioma atual
              Text(
                labelIdioma,
                style: const TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 20),

              // - - - Switch de idioma - - -
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("PT", style: TextStyle(fontSize: 16)),
                  Switch(
                    value: isEnglish,
                    onChanged: (valor) {
                      setState(() => isEnglish = valor);
                      salvarIdioma(valor);
                    },
                  ),
                  const Text("EN", style: TextStyle(fontSize: 16)),
                ],
              ),

              const SizedBox(height: 20),

              // - - - Botão alternativo (opcional) - - -

            ],
          ),
        ),
      ),
    );
  }
}