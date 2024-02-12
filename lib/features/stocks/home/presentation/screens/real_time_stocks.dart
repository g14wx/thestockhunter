import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/providers/stocks_to_watch_provider/stocks_to_watch.dart';
import 'package:thestuckhunter/services/push_notifications_service/notification_service.dart';
import 'package:thestuckhunter/services/stock_last_prices_service/stock_last_prices_stream_provider_service.dart';

class RealTimeStocks extends HookConsumerWidget {
  const RealTimeStocks({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stocksToWatch = ref.watch(stocksToWatchProvider);
    final state = ref.watch(stockLastPricesStreamProviderServiceProvider);
    return state.when(
      data: (data) {
        return CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate([])),
            if (stocksToWatch.stocks.isNotEmpty)
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                childCount: stocksToWatch.stocks.length,
                (context, index) {
                  final stockData = stocksToWatch.stocks[index];
                  final realStockData = data.data.where((tradeData) => tradeData.symbol == stockData.symbol).lastOrNull;
                  if (stockData.priceAlertFromUser != null &&
                      realStockData != null &&
                      realStockData.lastPrice >= stockData.priceAlertFromUser!) {
                    _showAlert(
                        symbol: stockData.symbol,
                        lastPriceStock: realStockData.lastPrice,
                        price: stockData.priceAlertFromUser!);
                  }
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
                            stockData.description,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                          Text(
                            stockData.symbol,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text("\$ ${realStockData?.lastPrice ?? "No data"}"),
                          if (stockData.priceAlertFromUser != null)
                            Text("Notify me when price is higher than: \$${stockData.priceAlertFromUser}"),
                          if (stockData.priceAlertFromUser == null) const Text("No alert set for this stock"),
                          TextButton(
                              onPressed: () {
                                ref.read(stocksToWatchProvider.notifier).removeStock(symbolAlertIndex: index);
                              },
                              child: const Text("Remove stock alert"))
                        ],
                      ));
                },
              )),
            if (stocksToWatch.stocks.isEmpty)
              SliverList(
                  delegate: SliverChildListDelegate([
                Center(
                    child: Column(
                  children: [
                    const Text("You dont have any alert stock"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          context.go("/search");
                        },
                        child: const Text("Go get some stock alerts!"))
                  ],
                ))
              ]))
          ],
        );
      },
      error: (Object error, StackTrace stackTrace) {
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

  _showAlert({required String symbol, required double price, required double lastPriceStock}) async {
    final title = "Hey your stock $symbol is higher as $price";
    final bodyString = "Your Alert when price is higher as $price, stock price at this moment is: $lastPriceStock";
    await NotificationService()
        .showNotification(channelId: "thestockhunterappg14wx", title: title, bodyString: bodyString);
  }
}
