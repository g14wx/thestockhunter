import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/stocks/home/presentation/controller/real_time_stocks_controller.dart';
import 'package:thestuckhunter/providers/stocks_to_watch_provider/stocks_to_watch.dart';

class RealTimeStocks extends HookConsumerWidget {
  const RealTimeStocks({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final realTimeStocksWithStocksToWatch = ref.watch(realTimeStocksControllerProvider);

    return realTimeStocksWithStocksToWatch.when(
      data: (data) {
        return data.isNotEmpty
            ? CustomScrollView(slivers: [
                SliverList(delegate: SliverChildListDelegate([])),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  childCount: data.length,
                  (context, index) {
                    return Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index].description,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              data[index].symbol,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text("\$ ${data[index].lastPriceCache ?? "No data"}"),
                            if (data[index].priceAlertFromUser != null)
                              Text("Notify me when price is higher than: \$${data[index].priceAlertFromUser}"),
                            if (data[index].priceAlertFromUser == null) const Text("No alert set for this stock"),
                            TextButton(
                                onPressed: () {
                                  ref.read(stocksToWatchProvider.notifier).removeStock(symbolAlertIndex: index);
                                },
                                child: const Text("Remove stock alert")),
                            TextButton(
                                onPressed: () => _dialogBuilder(
                                      context,
                                      done: (double price) {
                                        ref
                                            .read(stocksToWatchProvider.notifier)
                                            .setAlertToStock(indexSymbol: index, priceAlert: price);
                                      },
                                    ),
                                child: const Text("update alert for this stock"))
                          ],
                        ));
                  },
                ))
              ])
            : Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("You don't have any alert set"),
                    TextButton(
                        onPressed: () {
                          context.go("/search");
                        },
                        child: const Text("Go to set new alerts!"))
                  ],
                ),
              );
      },
      error: (error, stackTrace) {
        return Center(
          child: Text("ups error ${error.toString()}"),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  Future<void> _dialogBuilder(BuildContext context, {required Function(double price) done}) {
    String data = "";
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Basic dialog title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Set a price to be alert'),
              TextFormField(
                onChanged: (value) => data = value,
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
              )
            ],
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Set Alart'),
              onPressed: () {
                final price = double.tryParse(data);
                if (price != null) {
                  done(price);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
