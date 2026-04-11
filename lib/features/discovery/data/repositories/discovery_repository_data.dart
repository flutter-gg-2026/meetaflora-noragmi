import 'package:injectable/injectable.dart';
import 'package:meetaflora_noragmi/features/discovery/data/models/discovery_model.dart';
import 'package:multiple_result/multiple_result.dart';

import 'package:meetaflora_noragmi/core/errors/failure.dart';
import 'package:meetaflora_noragmi/core/errors/network_exceptions.dart';
import 'package:meetaflora_noragmi/features/discovery/data/datasources/discovery_datasource.dart';
import 'package:meetaflora_noragmi/features/discovery/domain/entities/discovery_entity.dart';
import 'package:meetaflora_noragmi/features/discovery/domain/repositories/discovery_repository_domain.dart';

@LazySingleton(as: DiscoveryRepositoryDomain)
class DiscoveryRepositoryData implements DiscoveryRepositoryDomain {
  final BaseDiscoveryDataSource _dataSource;

  DiscoveryRepositoryData(this._dataSource);

  @override
  Future<Result<List<DiscoveryEntity>, Failure>> getPlants() async {
    try {
      final response = await _dataSource.getPlants();
      return Success(response.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
