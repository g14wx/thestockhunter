import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/info/presentation/page/info_page.dart';
import 'package:thestuckhunter/features/search_symbols/add_symbol_to_watch_list/presentation/page/add_symbol_to_watch_list_page.dart';
import 'package:thestuckhunter/features/search_symbols/search/presentation/page/search_symbol_page.dart';
import 'package:thestuckhunter/features/stocks/data/models/symbol_model/symbol_model.dart';
import 'package:thestuckhunter/features/stocks/home/presentation/page/stocks_home_page.dart';
import 'package:thestuckhunter/widgets/router_navigation/scaffold_with_nested_navigation.dart';

enum AppRoute {
  search,
  info,
  home,
  add,
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'search');
final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _infoNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'info');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/home', navigatorKey: _rootNavigatorKey, debugLogDiagnostics: true, routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: [
            GoRoute(
              path: '/home',
              name: AppRoute.home.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const StocksHomePage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _searchNavigatorKey,
          routes: [
            GoRoute(
                path: '/search',
                name: AppRoute.search.name,
                pageBuilder: (context, state) => NoTransitionPage(
                      key: state.pageKey,
                      child: const SearchSymbolPage(),
                    ),
                routes: [
                  GoRoute(
                      path: 'add',
                      name: AppRoute.add.name,
                      pageBuilder: (context, state) {
                        final symbolRoot = state.extra as RootSymbolModelResponse;
                        return NoTransitionPage(key: state.pageKey, child: AddSymbolToWatchListPage(symbolRoot));
                      })
                ]),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _infoNavigatorKey,
          routes: [
            GoRoute(
              path: '/info',
              name: AppRoute.info.name,
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const InfoPage(),
              ),
            ),
          ],
        ),
      ],
    )
  ]);
});
