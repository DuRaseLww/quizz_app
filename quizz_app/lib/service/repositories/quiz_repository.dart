import 'package:dio/dio.dart';
import 'package:quizz_app/models/categories_model/category_model.dart';
import 'package:quizz_app/models/quiz_model/quiz_model.dart';
import 'package:quizz_app/service/api/api.dart';

final class QuizRepository {
  final Dio dio = Dio();

  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await QuizApiClient(dio).getCategories();
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<QuizModel>> getQuestionsByCategory(String category, int numberOfQuestions) async {
    try {
      final response = await QuizApiClient(dio).getQuestionsByCategory(category, numberOfQuestions);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
