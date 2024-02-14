import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/search_symbols/add_symbol_to_watch_list/providers/selected_symbol_to_add_to_watch_list.dart';
import 'package:thestuckhunter/features/stocks/data/models/symbol_model/symbol_model.dart';
import 'package:thestuckhunter/providers/stocks_to_watch_provider/stocks_to_watch.dart';
import 'package:thestuckhunter/services/stock_last_prices_service/stock_last_prices_stream_provider_service.dart';

class AddSymbolToWatchListPage extends HookConsumerWidget {
  final RootSymbolModelResponse symbolRoot;

  AddSymbolToWatchListPage(this.symbolRoot, {super.key});

  final formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final priceTextController = useTextEditingController();
    final selectedSymbolToAddToWatchListProvider = ref.watch(selectedSymbolToAddToWatchList);
    return Scaffold(
      appBar: AppBar(
        title: const Text("add"),
      ),
      body: Form(
        key: formState,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints.loose(const Size.fromWidth(700)),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Add a threshold notification about the price of this stock"),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Notify me when Price is higher as'),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: priceTextController,
                        autovalidateMode: AutovalidateMode.always,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "this cant be null";
                          }

                          if (double.tryParse(value) == null) {
                            return "this must be a decimal number";
                          }
                          if (value.endsWith(".")) {
                            return "this must be a decimal number";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(),
                          hintText: 'Notify me when Price is higher as',
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AutocompleteForStocks(
                        kOptions: symbolRoot.result,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            if (formState.currentState != null &&
                                formState.currentState!.validate() &&
                                selectedSymbolToAddToWatchListProvider.isNotEmpty) {
                              final newSymbolModel = symbolRoot.result
                                  .where((element) => element.symbol == selectedSymbolToAddToWatchListProvider)
                                  .firstOrNull;
                              if (newSymbolModel != null) {
                                // check if there is already this stock in the watch list
                                final stocksInWatchList = ref.watch(stocksToWatchProvider);
                                if (stocksInWatchList.stocks
                                    .where((symbol) => symbol.symbol == newSymbolModel.symbol)
                                    .isNotEmpty) {
                                  _showSnackBar(context: context, title: 'There is an already stock in the watchlist');
                                  return;
                                }

                                final modelToInserted = newSymbolModel.copyWith(
                                    priceAlertFromUser: double.parse(priceTextController.value.text));
                                // Add to watch list
                                ref.read(stocksToWatchProvider.notifier).setNewStock(newSymbolModel: modelToInserted);
                                // subscribe symbol to websocket
                                ref
                                    .read(stockLastPricesStreamProviderServiceProvider.notifier)
                                    .setNewSymbol(symbol: newSymbolModel.symbol);
                              } else {
                                _showSnackBar(context: context, title: 'Symbol was not found');
                              }
                              context.pop();
                            } else {
                              _showSnackBar(
                                  context: context, title: 'You need to set your price and your stock before go!');
                            }
                          },
                          child: const Text("Add alert!"))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showSnackBar({required BuildContext context, required String title, Color color = Colors.red}) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(title),
    );
    try {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
    } catch (e) {
      debugPrint(e.toString());
    }
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class AutocompleteForStocks extends HookConsumerWidget {
  final List<SymbolModel> kOptions;

  const AutocompleteForStocks({super.key, required this.kOptions});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedSymbolToAddToWatchListProvider = ref.watch(selectedSymbolToAddToWatchList);

    return Autocomplete<SymbolModel>(
      initialValue: TextEditingValue(text: selectedSymbolToAddToWatchListProvider),
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<SymbolModel>.empty();
        }
        return kOptions.where((SymbolModel option) {
          return option.symbol.toLowerCase().contains(textEditingValue.text.toLowerCase());
        });
      },
      displayStringForOption: (option) {
        return option.symbol;
      },
      onSelected: (SymbolModel selection) {
        debugPrint('You just selected ${selection.symbol}');
      },
    );
  }
}
