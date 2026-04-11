import 'package:equatable/equatable.dart';

abstract class PlantDetailsState extends Equatable {
  const PlantDetailsState();

  @override
  List<Object?> get props => [];
}

class PlantDetailsInitialState extends PlantDetailsState {
  const PlantDetailsInitialState();
}

class PlantDetailsLoadingState extends PlantDetailsState {
  const PlantDetailsLoadingState();
}

class PlantDetailsSuccessState extends PlantDetailsState {
  final String plantInfo;

  const PlantDetailsSuccessState({required this.plantInfo});

  @override
  List<Object?> get props => [plantInfo];
}

class PlantDetailsErrorState extends PlantDetailsState {
  final String message;

  const PlantDetailsErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
