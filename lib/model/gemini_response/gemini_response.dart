import 'package:ai_movie_recommendation_app/model/candidate/candidate.dart';
import 'package:ai_movie_recommendation_app/model/usage_metadata/usage_metadata.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_response.freezed.dart';
part 'gemini_response.g.dart';

@freezed
abstract class GeminiResponse with _$GeminiResponse {
  factory GeminiResponse({
    required List<Candidate> candidates,
    required UsageMetadata usageMetadata,
    required String modelVersion,
  }) = _GeminiResponse;
  factory GeminiResponse.fromJson(Map<String, dynamic> json) =>
      _$GeminiResponseFromJson(json);
}
