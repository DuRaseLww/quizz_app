import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz_app/models/user_model/user.dart';
import 'package:quizz_app/service/formatter/formatter.dart';
import 'package:quizz_app/service/media_query/media_query_service.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin>
    with SingleTickerProviderStateMixin {
  final _formLoginKey = GlobalKey<FormState>();
  final _mailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formatter = Formatter();

  @override
  void dispose() {
    _mailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    _formLoginKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    final service = AppMedia(context);
    final height = service.height! - (service.height! - 20);

    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formLoginKey,
          child: Padding(
            padding: EdgeInsets.only(left: height, right: height),
            child: Column(
              children: [
                SizedBox(height: 50),
                const Text('Авторизация',
                style: TextStyle(
                  fontSize: 24,
                  ),
                ),
                SizedBox(height: 50),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _mailController,
                  decoration: InputDecoration(
                    labelText: 'login',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  validator: (value) {
                    if (_formatter.mailIsEmpty(value!)) {
                      return 'Введите email!';
                    }

                    if (_formatter.isCorrectMailFormat(value) == false) {
                      return 'Введите корректный email!';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) => _submitForm(),
                ),
                SizedBox(height: 20),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  validator: (value) {
                    if (_formatter.passwordIsEmpty(value!)) {
                      return 'Введите пароль!';
                    }

                    if (!_formatter.isCorrectPasswordLength(value)) {
                      return 'Пароль должен содержать 8-16 символов!';
                    }

                    if (_formatter.isCorrectPasswordFormat(value) == false) {
                      return r'Пароль должен содержать латинские буквы и цирфы!';
                    }
                    return null;
                  },
                  onFieldSubmitted: (value) => _submitForm(),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    UserModel(_mailController.text, _passwordController.text).signIn();
                    FirebaseAuth.instance
                        .authStateChanges()
                        .listen((User? user) {
                      if (user == null) {
                        print('User is currently signed out!');
                      } else {
                        context.push('/start');
                        print('User is signed in!');
                      }
                    });
                  },
                  child: Text('Войти'),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text('Зарегистрироваться'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
