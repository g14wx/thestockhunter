import 'package:thestuckhunter/features/search_symbols/repositories/stock_repository/stocks_repository.dart';
import 'package:thestuckhunter/providers/app_router_provider/app_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:thestuckhunter/providers/dio_provider/dio_provider/dio.dart';
import 'package:thestuckhunter/services/sing_in_with_third_party_service/sing_in_with_third_party_service.dart';
part 'app_startup.g.dart';

@Riverpod(keepAlive: true)
Future<void> appStartup(AppStartupRef ref) async {
  ref.onDispose(() {
    ref.invalidate(goRouterProvider);
    ref.invalidate(stocksRepositoryProvider);
    ref.invalidate(dioProvider);
    ref.invalidate(signInWithThirdPartyServiceProvider);
  });

  await Future.wait([ref.watch(signInWithThirdPartyServiceProvider.future)]);
}
