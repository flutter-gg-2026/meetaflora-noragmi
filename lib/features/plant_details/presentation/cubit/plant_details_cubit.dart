import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetaflora_noragmi/features/plant_details/domain/use_cases/plant_details_use_case.dart';

import 'plant_details_state.dart';

class PlantDetailsCubit extends Cubit<PlantDetailsState> {
  final PlantDetailsUseCase _useCase;

  PlantDetailsCubit(this._useCase) : super(PlantDetailsInitialState());

  // Get plant info from Gemini
  Future<void> getPlantInfo({
    required String plantName,
    required String imagePath,
  }) async {
    // Show loading
    emit(const PlantDetailsLoadingState());

    final result = await _useCase.getPlantInfo(
      plantName: plantName,
      imagePath: imagePath,
    );

    result.when(
      (success) {
        emit(PlantDetailsSuccessState(plantInfo: success.plantInfo));
      },
      (error) {
        emit(PlantDetailsErrorState(message: error.message));
      },
    );
  }
}
