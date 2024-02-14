import 'package:flutter/material.dart';
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
        return CustomScrollView(slivers: [
          SliverList(delegate: SliverChildListDelegate([])),
          if (data.isNotEmpty)
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
                              ref.read(stocksToWatchProvider.notifier).removeStock(symbolAlertIndex: index);
                            },
                            child: const Text("Remove stock alert"))
                      ],
                    ));
              },
            ))
        ]);
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

  /* _showAlert({required String symbol, required double price, required double lastPriceStock}) async {
    final title = "Hey your stock $symbol is higher as $price";
    final bodyString = "Your Alert when price is higher as $price, stock price at this moment is: $lastPriceStock";
    await NotificationService()
        .showNotification(channelId: "thestockhunterappg14wx", title: title, bodyString: bodyString);
  } */
}
