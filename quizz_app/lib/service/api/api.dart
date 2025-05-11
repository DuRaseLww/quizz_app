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

  @GET('/categories?apiKey=u1ksN1V658CdtorFPrHpNg6x6k2X2fabi0nOZ21S')
  Future<List<CategoryModel>> getCategories();

  @GET('/questions?apiKey=u1ksN1V658CdtorFPrHpNg6x6k2X2fabi0nOZ21S&category=Linux&limit=3')
  Future<List<QuizModel>> getQuestions();
}
