import 'package:flutter/material.dart';

class AppStartupLoadingScreen extends StatelessWidget {
  const AppStartupLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
