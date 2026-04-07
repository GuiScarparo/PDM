import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Meu cartão")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 380,
                height: 220,
                decoration: BoxDecoration(
                  color: const Color(0xFF2B2B2B),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Castles Bank",
                          style: TextStyle(
                            fontSize: 19,
                            color: const Color(0xFFD4AF37),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.contactless,
                          size: 40,
                          color: const Color(0xFFD4AF37),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.sim_card,
                          size: 40,
                          color: const Color(0xFFD4AF37),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "8837 9917 0210 8620 ",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xFFD4AF37),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text(
                            "Titular",
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color(0xFFB8962E),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Validade",
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color(0xFFB8962E),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ],
                        ),
                        SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cavaleiro Verde",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xFFD4AF37),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "2/56",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xFFD4AF37),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
