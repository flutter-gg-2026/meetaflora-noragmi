import 'package:equatable/equatable.dart';

// This entity represents the AI-generated plant information
class PlantDetailsEntity extends Equatable {
  final String plantInfo;

  const PlantDetailsEntity({required this.plantInfo});

  @override
  List<Object?> get props => [plantInfo];
}
