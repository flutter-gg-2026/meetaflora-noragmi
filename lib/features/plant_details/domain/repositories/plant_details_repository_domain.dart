import 'package:multiple_result/multiple_result.dart';
import 'package:meetaflora_noragmi/core/errors/failure.dart';
import 'package:meetaflora_noragmi/features/plant_details/domain/entities/plant_details_entity.dart';

// Abstract contract - defines what the repository CAN do
abstract class PlantDetailsRepositoryDomain {
  Future<Result<PlantDetailsEntity, Failure>> getPlantInfo({
    required String plantName,
    required String imagePath,
  });
}
