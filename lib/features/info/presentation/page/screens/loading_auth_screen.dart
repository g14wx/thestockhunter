import 'package:flutter/material.dart';

class LoadingAuthScreen extends StatelessWidget {
  const LoadingAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
