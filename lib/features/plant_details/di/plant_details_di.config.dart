// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/datasources/plant_details_datasource.dart' as _i698;
import '../data/repositories/plant_details_repository_data.dart' as _i301;
import '../domain/repositories/plant_details_repository_domain.dart' as _i1033;
import '../domain/use_cases/plant_details_use_case.dart' as _i590;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initPlantDetails({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i698.BasePlantDetailsDataSource>(
      () => _i698.PlantDetailsDataSource(),
    );
    gh.lazySingleton<_i1033.PlantDetailsRepositoryDomain>(
      () => _i301.PlantDetailsRepositoryData(
        gh<_i698.BasePlantDetailsDataSource>(),
      ),
    );
    gh.lazySingleton<_i590.PlantDetailsUseCase>(
      () =>
          _i590.PlantDetailsUseCase(gh<_i1033.PlantDetailsRepositoryDomain>()),
    );
    return this;
  }
}
