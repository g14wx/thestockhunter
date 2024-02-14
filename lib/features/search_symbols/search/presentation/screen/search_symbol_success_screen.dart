import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/search_symbols/add_symbol_to_watch_list/providers/selected_symbol_to_add_to_watch_list.dart';
import 'package:thestuckhunter/features/stocks/data/models/symbol_model/symbol_model.dart';

class SearchSymbolSuccessScreen extends HookConsumerWidget {
  final RootSymbolModelResponse symbolRoot;

  const SearchSymbolSuccessScreen({super.key, required this.symbolRoot});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return symbolRoot.result.isNotEmpty
        ? CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                return ListTile(
                  onTap: () {
                    ref.read(selectedSymbolToAddToWatchList.notifier).state = symbolRoot.result[index].symbol;
                    context.go("/search/add", extra: symbolRoot);
                  },
                  title: Text(symbolRoot.result[index].description),
                  leading: const Icon(Icons.circle),
                  subtitle: Text(symbolRoot.result[index].symbol),
                  trailing: const Text("Add alert"),
                );
              }, childCount: symbolRoot.count))
            ],
          )
        : const Center(
            child: Text("We didn't find a stock with that symbol"),
          );
  }
}
