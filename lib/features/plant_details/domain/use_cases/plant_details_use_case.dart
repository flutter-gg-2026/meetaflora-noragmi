import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

import 'package:meetaflora_noragmi/core/errors/failure.dart';
import 'package:meetaflora_noragmi/features/plant_details/domain/entities/plant_details_entity.dart';
import 'package:meetaflora_noragmi/features/plant_details/domain/repositories/plant_details_repository_domain.dart';

@lazySingleton
class PlantDetailsUseCase {
  final PlantDetailsRepositoryDomain _repository;

  PlantDetailsUseCase(this._repository);

  // Get AI-generated plant information from Gemini
  Future<Result<PlantDetailsEntity, Failure>> getPlantInfo({
    required String plantName,
    required String imagePath,
  }) {
    return _repository.getPlantInfo(plantName: plantName, imagePath: imagePath);
  }
}
