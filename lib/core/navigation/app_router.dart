import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'routers.dart';
import 'package:meetaflora_noragmi/features/discovery/presentation/cubit/discovery_cubit.dart';
import 'package:meetaflora_noragmi/features/discovery/presentation/pages/discovery_screen.dart';
import 'package:meetaflora_noragmi/features/plant_details/presentation/cubit/plant_details_cubit.dart';
import 'package:meetaflora_noragmi/features/plant_details/presentation/pages/plant_details_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.discovery,
    routes: [
      GoRoute(
        path: Routes.discovery,
        builder: (context, state) => BlocProvider(
          create: (context) => DiscoveryCubit(GetIt.I.get())..getPlants(),
          child: const DiscoveryScreen(),
        ),
      ),

      GoRoute(
        path: Routes.plantDetails,
        builder: (context, state) {
          final extra = state.extra as Map<String, String>;
          return BlocProvider(
            create: (context) => PlantDetailsCubit(GetIt.I.get())
              ..getPlantInfo(
                plantName: extra['plantName']!,
                imagePath: extra['imagePath']!,
              ),
            child: PlantDetailsScreen(
              plantName: extra['plantName']!,
              imagePath: extra['imagePath']!,
            ),
          );
        },
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
