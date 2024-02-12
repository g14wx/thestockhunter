// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stocks_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stocksRepositoryHash() => r'd3933f8aed6deeecbd5878483c10db145e646327';

/// See also [stocksRepository].
@ProviderFor(stocksRepository)
final stocksRepositoryProvider = AutoDisposeProvider<StocksRepository>.internal(
  stocksRepository,
  name: r'stocksRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$stocksRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StocksRepositoryRef = AutoDisposeProviderRef<StocksRepository>;
String _$getSymbolHash() => r'0cd761b85c8b273b1f2fd82a0e11f6506aa3d152';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getSymbol].
@ProviderFor(getSymbol)
const getSymbolProvider = GetSymbolFamily();

/// See also [getSymbol].
class GetSymbolFamily extends Family<AsyncValue<RootSymbolModelResponse>> {
  /// See also [getSymbol].
  const GetSymbolFamily();

  /// See also [getSymbol].
  GetSymbolProvider call({
    required String symbol,
  }) {
    return GetSymbolProvider(
      symbol: symbol,
    );
  }

  @override
  GetSymbolProvider getProviderOverride(
    covariant GetSymbolProvider provider,
  ) {
    return call(
      symbol: provider.symbol,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'getSymbolProvider';
}

/// See also [getSymbol].
class GetSymbolProvider extends AutoDisposeFutureProvider<RootSymbolModelResponse> {
  /// See also [getSymbol].
  GetSymbolProvider({
    required String symbol,
  }) : this._internal(
          (ref) => getSymbol(
            ref as GetSymbolRef,
            symbol: symbol,
          ),
          from: getSymbolProvider,
          name: r'getSymbolProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$getSymbolHash,
          dependencies: GetSymbolFamily._dependencies,
          allTransitiveDependencies: GetSymbolFamily._allTransitiveDependencies,
          symbol: symbol,
        );

  GetSymbolProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.symbol,
  }) : super.internal();

  final String symbol;

  @override
  Override overrideWith(
    FutureOr<RootSymbolModelResponse> Function(GetSymbolRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSymbolProvider._internal(
        (ref) => create(ref as GetSymbolRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        symbol: symbol,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RootSymbolModelResponse> createElement() {
    return _GetSymbolProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSymbolProvider && other.symbol == symbol;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, symbol.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetSymbolRef on AutoDisposeFutureProviderRef<RootSymbolModelResponse> {
  /// The parameter `symbol` of this provider.
  String get symbol;
}

class _GetSymbolProviderElement extends AutoDisposeFutureProviderElement<RootSymbolModelResponse> with GetSymbolRef {
  _GetSymbolProviderElement(super.provider);

  @override
  String get symbol => (origin as GetSymbolProvider).symbol;
}

String _$symbolsHash() => r'0466bec99ec8ddfa6c7a5712d91890bec0a7faac';

/// See also [symbols].
@ProviderFor(symbols)
final symbolsProvider = AutoDisposeFutureProvider<List<SymbolModel>>.internal(
  symbols,
  name: r'symbolsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$symbolsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SymbolsRef = AutoDisposeFutureProviderRef<List<SymbolModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
