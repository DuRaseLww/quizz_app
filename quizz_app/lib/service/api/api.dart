import 'package:dio/dio.dart';
import 'package:quizz_app/models/categories_model/category_model.dart';
import 'package:quizz_app/models/quiz_model/quiz_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: 'https://quizapi.io/api/v1')
abstract class QuizApiClient {
  factory QuizApiClient(
      Dio dio,
      {String? baseUrl}) = _QuizApiClient;

  @GET('/categories?apiKey=TD0I5iIjyc3Xm7sOj0XiipUr1VZZjdo7fkenEQGX')
  Future<List<CategoryModel>> getCategories();

  @GET('/questions?apiKey=TD0I5iIjyc3Xm7sOj0XiipUr1VZZjdo7fkenEQGX')
  Future<List<QuizModel>> getQuestionsByCategory(
      @Query('category') String category,
      @Query('limit') int limit,
      );
}
