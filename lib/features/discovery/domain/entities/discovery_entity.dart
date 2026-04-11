import 'package:equatable/equatable.dart';
import 'package:flutter/gestures.dart';

// This entity represents a plant selected by the user
class DiscoveryEntity extends Equatable {
  final String name;
  final String imagePath;

  const DiscoveryEntity({required this.name, required this.imagePath});

  @override
  List<Object?> get props => [name, imagePath];
}
