import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'env')
final class Env {
  @EnviedField(varName: 'FINN_HUB_API_KEY', obfuscate: true)
  static final String finnHubApiKey = _Env.finnHubApiKey;

  @EnviedField(varName: 'BASE_FINN_HUB_URL', obfuscate: true)
  static final String baseFinnHubApiUrl = _Env.baseFinnHubApiUrl;

  @EnviedField(varName: 'PATH_PREFIX_API', obfuscate: true)
  static final String pathPrefixApi = _Env.pathPrefixApi;

  @EnviedField(varName: 'PATH_API_VERSION', obfuscate: true)
  static final String pathApiVersion = _Env.pathApiVersion;

  @EnviedField(varName: 'PATH_GET_STOCKS_FINN_HUB', obfuscate: true)
  static final String pathGetStockFinnHub = _Env.pathGetStockFinnHub;

  @EnviedField(varName: 'PATH_GET_SYMBOLS_FINN_HUB', obfuscate: true)
  static final String pathGetSymbolsFinnHub = _Env.pathGetSymbolsFinnHub;

  @EnviedField(varName: 'SOCKET_FINN_LAST_PRICES', obfuscate: true)
  static final String socketFinnLastPrices = _Env.socketFinnLastPrices;

  @EnviedField(varName: 'PATH_SEARCH_SYMBOLS', obfuscate: true)
  static final String pathSearchSymbols = _Env.pathSearchSymbols;

  @EnviedField(varName: 'APP_WRITE_ENDPOINT', obfuscate: true)
  static final String appWriteEndpoint = _Env.appWriteEndpoint;

  @EnviedField(varName: 'APP_WRITE_PROJECT_ID', obfuscate: true)
  static final String appWriteProjectId = _Env.appWriteProjectId;
}
