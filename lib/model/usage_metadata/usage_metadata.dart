import 'package:ai_movie_recommendation_app/model/token_details/token_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_metadata.freezed.dart';
part 'usage_metadata.g.dart';

@freezed
abstract class UsageMetadata with _$UsageMetadata {
  factory UsageMetadata({
    required int promptTokenCount,
    required int candidatesTokenCount,
    required int totalTokenCount,
    required List<TokenDetails> promptTokensDetails,
    required List<TokenDetails> candidatesTokensDetails,
  }) = _UsageMetadata;
  factory UsageMetadata.fromJson(Map<String, dynamic> json) =>
      _$UsageMetadataFromJson(json);
}
