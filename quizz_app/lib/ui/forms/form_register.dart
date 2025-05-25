import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz_app/service/auth_service/auth_service.dart';
import 'package:quizz_app/service/formatter/formatter.dart';
import '../../service/media_query/media_query_service.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister>
    with SingleTickerProviderStateMixin {
  final _formRegistrationKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formatter = Formatter();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    _formRegistrationKey.currentState!.validate();
  }

  void _registration() {
    if (_formatter.isAllCorrect(
      _emailController.text,
      _passwordController.text,
    )) {
      AuthServiceImpl().createUser(
        _emailController.text,
        _passwordController.text,
      );
    }
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
          key: _formRegistrationKey,
          child: Padding(
            padding: EdgeInsets.only(left: height, right: height),
            child: Column(
              children: [
                SizedBox(height: 50),
                const Text('Регистрация', style: TextStyle(fontSize: 24)),
                SizedBox(height: 50),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'email',
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
                    _registration();

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
                  child: Text('Зарегистрироваться'),
                ),
                SizedBox(height: 20),
                TextButton(
                  child: Text('Имеете аккаунт? Войти'),
                  onPressed: () {
                    context.push('/login');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
