import 'package:injectable/injectable.dart';
import 'package:meetaflora_noragmi/core/errors/network_exceptions.dart';
import 'package:meetaflora_noragmi/features/discovery/data/models/discovery_model.dart';

// Abstract class - defines what datasource CAN do
abstract class BaseDiscoveryDataSource {
  Future<List<DiscoveryModel>> getPlants();
}

@LazySingleton(as: BaseDiscoveryDataSource)
class DiscoveryDatasource implements BaseDiscoveryDataSource {
  @override
  Future<List<DiscoveryModel>> getPlants() async {
    try {
      //Return a static list of plants with their local image paths
      return [
        const DiscoveryModel(name: 'Rose', imagePath: 'assets/images/rose.jpg'),
        const DiscoveryModel(
          name: 'Sunflower',
          imagePath: 'assets/images/sunflower.jpg',
        ),
        const DiscoveryModel(
          name: 'Cactus',
          imagePath: 'assets/images/cactus.jpg',
        ),
        const DiscoveryModel(
          name: 'Lavender',
          imagePath: 'assets/images/lavender.jpg',
        ),
        const DiscoveryModel(
          name: 'Tulip',
          imagePath: 'assets/images/tulip.jpg',
        ),
        const DiscoveryModel(
          name: 'Daisy',
          imagePath: 'assets/images/daisy.jpg',
        ),
      ];
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
