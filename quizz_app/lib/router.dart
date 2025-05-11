
import 'package:go_router/go_router.dart';
import 'package:quizz_app/main.dart';
import 'package:quizz_app/ui/views/categories_view/categories_page.dart';
import 'package:quizz_app/ui/views/question_page/question_page.dart';
import 'package:quizz_app/ui/views/registration_view/registration_page.dart';
import 'package:quizz_app/ui/views/start_view/start_page.dart';

final class AppRouter {
  static const String loginPath = '/login';
  static const String registrationPath = '/registration';
  static const String startPath = '/start';
  static const String categoriesPath = '/categories';
  static const String questionsPath = '/questions';

  final router = GoRouter(
    initialLocation: registrationPath,
    routes: [
      GoRoute(
          path: loginPath,
          builder: (context, state) => Home(),
      ),
      GoRoute(
        path: registrationPath,
        builder: (context, state) => RegistrationView(),
      ),
      GoRoute(
        path: startPath,
        builder: (context, state) => StartView(),
      ),
      GoRoute(
        path: categoriesPath,
        builder: (context, state) => CategoriesView(),
      ),
      GoRoute(
        path: questionsPath,
        builder: (context, state) => QuestionView(),
      ),

    ],
  );
}
