import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetaflora_noragmi/features/discovery/domain/use_cases/discovery_use_case.dart';

import 'discovery_state.dart';

class DiscoveryCubit extends Cubit<DiscoveryState> {
  final DiscoveryUseCase _useCase;

  DiscoveryCubit(this._useCase) : super(const DiscoveryInitialState());

  // Get list of plants
  Future<void> getPlants() async {
    final result = await _useCase.getPlants();

    result.when(
      (success) {
        emit(DiscoverySuccessState(plants: success));
      },
      (error) {
        emit(DiscoveryErrorState(message: error.message));
      },
    );
  }
}
