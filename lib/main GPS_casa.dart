import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minha localização',
      home: const LocalizacaoPage(),
    );
  }
}

class LocalizacaoPage extends StatefulWidget {
  const LocalizacaoPage({super.key});

  @override
  State<LocalizacaoPage> createState() => _LocalizacaoPageState();
}

class _LocalizacaoPageState extends State<LocalizacaoPage> {
  double latitudeAtual = 0.0;
  double longitudeAtual = 0.0;
  double distanciaAtual = 0.0;
  double latitudeCasa = -21.471026;
  double longitudeCasa = -46.991045;

  Future<void> buscarLocalizacao() async {
    bool servicoAtivo = await Geolocator.isLocationServiceEnabled();
    if (!servicoAtivo) {
      await Geolocator.openLocationSettings();
      return;
    }
    LocationPermission permissao = await Geolocator.checkPermission();
    if (permissao == LocationPermission.denied) {
      permissao = await Geolocator.requestPermission();
    }
    if (permissao == LocationPermission.denied) {
      permissao == LocationPermission.deniedForever;
    }
    Position posicao = await Geolocator.getCurrentPosition();
    setState(() {
      latitudeAtual = posicao.latitude;
      longitudeAtual = posicao.longitude;
    });
    print('Latitude: $latitudeAtual');
    print('Longitude: $longitudeAtual');
  }

  Future<void> calcularDistancia() async {
    setState(() {
      distanciaAtual = Geolocator.distanceBetween(
        latitudeAtual,
        longitudeAtual,
        latitudeCasa,
        longitudeCasa,
      );
    });

    print('Distância até casa: ${distanciaAtual.toStringAsFixed(2)} metros');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Minha localização')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.house, size: 80, color: Color(0xFF00BFFF)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: buscarLocalizacao,
                child: const Text("Obter localização"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: calcularDistancia,
                child: const Text("Calcular distância até casa"),
              ),
              const SizedBox(height: 20),
              Text(
                "Distância até casa: ${(distanciaAtual/1000).toStringAsFixed(2)} km",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
