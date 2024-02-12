import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G14wx"),
      ),
      body: const Center(
        child: Text("Made by Carlos Hernandez"),
      ),
    );
  }
}
