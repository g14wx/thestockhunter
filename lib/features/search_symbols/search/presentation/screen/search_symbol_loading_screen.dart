import 'package:flutter/material.dart';

class SearchSymbolLoadingScreen extends StatelessWidget {
  const SearchSymbolLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
