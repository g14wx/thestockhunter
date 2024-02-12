import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SearchSymbolErrorScreen extends StatelessWidget {
  final String error;
  final String query;

  const SearchSymbolErrorScreen({super.key, required this.error, required this.query});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [Text("We cant find a symbol with that name $query"), if (kDebugMode) Text(error)],
          ),
        )));
  }
}
