import 'package:ai_movie_recommendation_app/constants/constants.dart';
import 'package:ai_movie_recommendation_app/model/content/content.dart';
import 'package:dio/dio.dart';

class ChatRepo {
  static final ChatRepo _chatRepo = ChatRepo._internal();

  factory ChatRepo() {
    return _chatRepo;
  }

  ChatRepo._internal();

  Future<String> generateText(List<Content> messages) async {
    final dio = Dio(BaseOptions(
      validateStatus: (status) {
        return status! < 500;
      },
    ));

    try {
      final response = await dio.post(
        '$url?key=$apiKey',
        data: {
          "contents": [
            {
              "role": "user",
              "parts": [
                {
                  "text":
                      "You are an AI movie recommendation system. Don't give answers to unrelated questions."
                }
              ]
            },
            messages.map((e) => e.toJson()).toList()
          ],
          "generationConfig": {
            "temperature": 1,
            "topK": 40,
            "topP": 0.95,
            "maxOutputTokens": 8192,
            "responseMimeType": "text/plain"
          }
        },
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        String text =
            response.data["candidates"][0]["content"]["parts"][0]["text"];

        print("Response: $text");

        return text;
      } else {
        print("Error: ${response.statusCode} - ${response.data}");

        String error = "${response.statusCode} - ${response.data}";

        return error;
      }
    } catch (e) {
      print("Exception: $e");
      return '';
    }
  }
}
