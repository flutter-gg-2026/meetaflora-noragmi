import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> setup() async {
  //load .env file
  await dotenv.load(fileName: '.env');
}
