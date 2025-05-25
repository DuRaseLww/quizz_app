import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz_app/service/formatter/formatter.dart';
import 'package:quizz_app/service/media_query/media_query_service.dart';

import '../../service/auth_service/auth_service.dart';

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

  String? validationMail(String value) {
      if (_formatter.mailIsEmpty(value)) {
        return 'Введите email!';
      }

      if (_formatter.isCorrectMailFormat(value) == false) {
        return 'Введите корректный email!';
      }
      return null;
  }

  String? validationPassword(String password) {
    if (_formatter.passwordIsEmpty(password)) {
      return 'Введите пароль!';
    }

    if (!_formatter.isCorrectPasswordLength(password)) {
      return 'Пароль должен содержать 8-16 символов!';
    }

    if (_formatter.isCorrectPasswordFormat(password) == false) {
      return r'Пароль должен содержать латинские буквы и цирфы!';
    }
    return null;
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
                const Text('Авторизация', style: TextStyle(fontSize: 24)),
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
                  validator: (value) => validationMail(value!),
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
                  validator: (value) => validationPassword(value!),
                  onFieldSubmitted: (value) => _submitForm(),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    AuthServiceImpl().signIn(
                      _mailController.text,
                      _passwordController.text,
                    );
                    FirebaseAuth.instance.authStateChanges().listen((
                      User? user,
                    ) {
                      if (user == null) {
                        debugPrint('User is currently signed out!');
                      } else {
                        context.push('/start');
                        debugPrint('User is signed in!');
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
