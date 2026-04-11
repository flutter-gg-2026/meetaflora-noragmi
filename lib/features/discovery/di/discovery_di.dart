import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'discovery_di.config.dart';

@InjectableInit(
  initializerName: 'initDiscovery',
  preferRelativeImports: true,
  asExtension: true,
  generateForDir: ['lib/features/discovery'],
)
void configureDiscovery(GetIt getIt) {
  getIt.initDiscovery();
}