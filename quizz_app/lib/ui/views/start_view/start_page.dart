import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.push('/categories'),
                child: const Text('Начать'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => context.push,
                child: const Text('Профиль'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () => context.push,
                child: const Text('Результаты'),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  context.push('/login');

                  FirebaseAuth.instance
                      .authStateChanges()
                      .listen((User? user) {
                    if (user == null) {
                      print('User is currently signed out!');
                    } else {
                      print('User is signed in!');
                    }
                  });
                },
                child: const Text('Выйти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
