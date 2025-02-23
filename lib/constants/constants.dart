import 'package:flutter_dotenv/flutter_dotenv.dart';

String apiKey = dotenv.env['API_KEY'] ?? '';
// const String baseUrl =
//     "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?";

const String url =
    "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent";
