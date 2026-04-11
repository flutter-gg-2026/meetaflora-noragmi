import 'package:equatable/equatable.dart';
import 'package:meetaflora_noragmi/features/discovery/domain/entities/discovery_entity.dart';

abstract class DiscoveryState extends Equatable {
  const DiscoveryState();

  @override
  List<Object?> get props => [];
}

class DiscoveryInitialState extends DiscoveryState {
  const DiscoveryInitialState();
}

class DiscoveryLoadingState extends DiscoveryState {
  const DiscoveryLoadingState();
}

class DiscoverySuccessState extends DiscoveryState {
  final List<DiscoveryEntity> plants;

  const DiscoverySuccessState({required this.plants});

  @override
  List<Object?> get props => [plants];
}

class DiscoveryErrorState extends DiscoveryState {
  final String message;

  const DiscoveryErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}