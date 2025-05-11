import 'package:flutter/material.dart';
import 'package:quizz_app/ui/forms/form_login.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginViewState();
  }
}

class _LoginViewState extends State<LoginView> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: FormLogin(),
      ),
    );
  }
}