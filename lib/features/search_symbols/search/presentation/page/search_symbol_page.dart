import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/search_symbols/repositories/stock_repository/stocks_repository.dart';
import 'package:thestuckhunter/features/search_symbols/search/presentation/page/widgets/symbol_search_bar.dart';
import 'package:thestuckhunter/features/search_symbols/search/presentation/providers/search_symbol_text_provider.dart';
import 'package:thestuckhunter/features/search_symbols/search/presentation/screen/search_symbol_error_screen.dart';
import 'package:thestuckhunter/features/search_symbols/search/presentation/screen/search_symbol_loading_screen.dart';
import 'package:thestuckhunter/features/search_symbols/search/presentation/screen/search_symbol_success_screen.dart';

class SearchSymbolPage extends HookConsumerWidget {
  const SearchSymbolPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(symbolSearchTextProvider);

    final symbolAsync = ref.watch(getSymbolProvider(symbol: query));

    return Scaffold(
        appBar: AppBar(title: const Text("Search symbol")),
        body: Column(
          children: [
            const SymbolSearchBar(),
            Expanded(
                child: Center(
                    child: symbolAsync.when(
                        data: (data) => SearchSymbolSuccessScreen(symbolRoot: data),
                        error: (error, stackTrace) => SearchSymbolErrorScreen(error: error.toString(), query: query),
                        loading: () => const SearchSymbolLoadingScreen())))
          ],
        ));
  }
}
