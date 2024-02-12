import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/stocks/home/presentation/screens/real_time_stocks.dart';

class StocksHomePage extends HookConsumerWidget {
  const StocksHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(title: const Text("Search symbol")),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints.loose(const Size.fromWidth(700)),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Stocks alerts that you are following"),
                ),
                Expanded(child: Center(child: RealTimeStocks()))
              ],
            ),
          ),
        ));
  }
}
