import 'package:freezed_annotation/freezed_annotation.dart';

part 'tags_model.freezed.dart';
part 'tags_model.g.dart';

@Freezed()
abstract class Tags with _$Tags {

  const factory Tags({
    required String name,
  }) = _Tags;

  factory Tags.fromJson(Map<String,dynamic> json) => _$TagsFromJson(json);
}