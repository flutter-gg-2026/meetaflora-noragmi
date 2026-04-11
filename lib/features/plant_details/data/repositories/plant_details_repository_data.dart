import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';

import 'package:meetaflora_noragmi/core/errors/failure.dart';
import 'package:meetaflora_noragmi/core/errors/network_exceptions.dart';
import 'package:meetaflora_noragmi/features/plant_details/data/datasources/plant_details_datasource.dart';
import 'package:meetaflora_noragmi/features/plant_details/data/models/plant_details_model.dart';
import 'package:meetaflora_noragmi/features/plant_details/domain/entities/plant_details_entity.dart';
import 'package:meetaflora_noragmi/features/plant_details/domain/repositories/plant_details_repository_domain.dart';

@LazySingleton(as: PlantDetailsRepositoryDomain)
class PlantDetailsRepositoryData implements PlantDetailsRepositoryDomain {
  final BasePlantDetailsDataSource _dataSource;

  PlantDetailsRepositoryData(this._dataSource);

  @override
  Future<Result<PlantDetailsEntity, Failure>> getPlantInfo({
    required String plantName,
    required String imagePath,
  }) async {
    try {
      final response = await _dataSource.getPlantInfo(
        plantName: plantName,
        imagePath: imagePath,
      );
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
