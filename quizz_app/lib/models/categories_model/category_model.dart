import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@Freezed()
abstract class CategoryModel with _$CategoryModel {

  const factory CategoryModel({
    required int id,
    required String name,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String,dynamic> json) => _$CategoryModelFromJson(json);
}