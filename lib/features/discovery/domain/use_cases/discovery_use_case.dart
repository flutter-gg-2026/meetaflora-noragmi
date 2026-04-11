import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

import 'package:meetaflora_noragmi/core/errors/failure.dart';
import 'package:meetaflora_noragmi/features/discovery/domain/entities/discovery_entity.dart';
import 'package:meetaflora_noragmi/features/discovery/domain/repositories/discovery_repository_domain.dart';

@lazySingleton
class DiscoveryUseCase {
  final DiscoveryRepositoryDomain _repository;

  DiscoveryUseCase(this._repository);

  //Get list of plants to display in discovery screen
  Future<Result<List<DiscoveryEntity>, Failure>> getPlants() {
    return _repository.getPlants();
  }
}
