import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'configure_dependencies.config.dart';
import 'package:meetaflora_noragmi/features/discovery/di/discovery_di.dart';
import 'package:meetaflora_noragmi/features/plant_details/di/plant_details_di.dart';

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  generateForDir: ['lib/core'],
)
Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
  configureDiscovery(getIt);
  configurePlantDetails(getIt);
}
