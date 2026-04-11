import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:meetaflora_noragmi/features/discovery/domain/entities/discovery_entity.dart';



part 'discovery_model.freezed.dart';

part 'discovery_model.g.dart';

@freezed
abstract class DiscoveryModel with _$DiscoveryModel {
  const factory DiscoveryModel({
    required String name,
    required String imagePath,
  }) = _DiscoveryModel;

  factory DiscoveryModel.fromJson(Map<String, Object?> json) => _$DiscoveryModelFromJson(json);
}

//Convert Model to Entity
extension DiscoveryModelMapper on DiscoveryModel {
  DiscoveryEntity toEntity() {
    return DiscoveryEntity(
      name: name, 
      imagePath: imagePath,
      );
  }
}