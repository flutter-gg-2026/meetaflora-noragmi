import 'package:meetaflora_noragmi/core/errors/failure.dart';
import 'package:meetaflora_noragmi/features/discovery/domain/entities/discovery_entity.dart';
import 'package:multiple_result/multiple_result.dart';




// Abstract contract - defines what the repository CAN do
abstract class DiscoveryRepositoryDomain {
  Future<Result<List<DiscoveryEntity>, Failure>> getPlants();
}