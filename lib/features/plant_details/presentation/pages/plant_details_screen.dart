import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/plant_details_cubit.dart';
import '../cubit/plant_details_state.dart';

class PlantDetailsScreen extends StatelessWidget {
  final String plantName;
  final String imagePath;

  const PlantDetailsScreen({
    super.key,
    required this.plantName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(plantName)),
      body: SafeArea(
        child: BlocBuilder<PlantDetailsCubit, PlantDetailsState>(
          builder: (context, state) {
            if (state is PlantDetailsLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PlantDetailsSuccessState) {
              return SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        imagePath,
                        width: double.infinity,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(state.plantInfo, style: const TextStyle(fontSize: 16)),
                  ],
                ),
              );
            }
            if (state is PlantDetailsErrorState) {
              return Center(child: Text(state.message));
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
