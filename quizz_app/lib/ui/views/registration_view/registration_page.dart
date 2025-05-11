import 'package:flutter/material.dart';
import 'package:quizz_app/ui/forms/form_register.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RegistrationViewState();
  }
}

class _RegistrationViewState extends State<RegistrationView> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: FormRegister(),
      ),
    );
  }
}
