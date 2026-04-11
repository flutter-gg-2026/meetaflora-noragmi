import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meetaflora_noragmi/features/plant_details/domain/entities/plant_details_entity.dart';

part 'plant_details_model.freezed.dart';
part 'plant_details_model.g.dart';

@freezed
abstract class PlantDetailsModel with _$PlantDetailsModel {
  const factory PlantDetailsModel({
    required String plantInfo,
  }) = _PlantDetailsModel;

  factory PlantDetailsModel.fromJson(Map<String, Object?> json) =>
      _$PlantDetailsModelFromJson(json);
}

// Convert Model to Entity
extension PlantDetailsModelMapper on PlantDetailsModel {
  PlantDetailsEntity toEntity() {
    return PlantDetailsEntity(
      plantInfo: plantInfo,
    );
  }
}