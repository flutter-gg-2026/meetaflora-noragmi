import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'plant_details_di.config.dart';

@InjectableInit(
  initializerName: 'initPlantDetails',
  preferRelativeImports: true,
  asExtension: true,
  generateForDir: ['lib/features/plant_details'],
)
void configurePlantDetails(GetIt getIt) {
  getIt.initPlantDetails();
}