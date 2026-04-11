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

import '../data/datasources/discovery_datasource.dart' as _i408;
import '../data/repositories/discovery_repository_data.dart' as _i701;
import '../domain/repositories/discovery_repository_domain.dart' as _i261;
import '../domain/use_cases/discovery_use_case.dart' as _i765;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initDiscovery({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i408.BaseDiscoveryDataSource>(
      () => _i408.DiscoveryDatasource(),
    );
    gh.lazySingleton<_i261.DiscoveryRepositoryDomain>(
      () => _i701.DiscoveryRepositoryData(gh<_i408.BaseDiscoveryDataSource>()),
    );
    gh.lazySingleton<_i765.DiscoveryUseCase>(
      () => _i765.DiscoveryUseCase(gh<_i261.DiscoveryRepositoryDomain>()),
    );
    return this;
  }
}
