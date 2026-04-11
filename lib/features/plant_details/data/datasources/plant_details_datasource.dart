import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';

import 'package:meetaflora_noragmi/core/errors/network_exceptions.dart';
import 'package:meetaflora_noragmi/features/plant_details/data/models/plant_details_model.dart';

abstract class BasePlantDetailsDataSource {
  Future<PlantDetailsModel> getPlantInfo({
    required String plantName,
    required String imagePath,
  });
}

@LazySingleton(as: BasePlantDetailsDataSource)
class PlantDetailsDataSource implements BasePlantDetailsDataSource {
  @override
  Future<PlantDetailsModel> getPlantInfo({
    required String plantName,
    required String imagePath,
  }) async {
    try {
      // Read image as base64
      final imageBytes = await rootBundle
          .load(imagePath)
          .then((data) => data.buffer.asUint8List());
      final base64Image = base64Encode(imageBytes);

      final dio = Dio();
      final response = await dio.post(
        'https://api.openai.com/v1/chat/completions',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${dotenv.env['OPENAI_API_KEY']}',
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'model': 'gpt-4o-mini',
          'messages': [
            {
              'role': 'user',
              'content': [
                {
                  'type': 'text',
                  'text':
                      'You are a botanist expert. Analyze this plant image and provide:'
                      '\n1. Plant name: $plantName'
                      '\n2. Brief description (2-3 sentences)'
                      '\n3. Care tips (watering, sunlight, temperature)'
                      '\n4. Interesting facts'
                      '\nKeep the response concise and friendly.',
                },
                {
                  'type': 'image_url',
                  'image_url': {'url': 'data:image/jpeg;base64,$base64Image'},
                },
              ],
            },
          ],
        },
      );

      final text = response.data['choices'][0]['message']['content'] as String;
      return PlantDetailsModel(plantInfo: text);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
