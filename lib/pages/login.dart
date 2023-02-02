import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:lab07/services/auth_service.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Center(
        child: Column(
          children: [
            GoogleAuthButton(
              onPressed: () {
                GoogleAuthService().singinwithGoogle();
              },
            ),
            ElevatedButton(
                onPressed: () {
                  GoogleAuthService().googleSingOut();
                },
                child: Text("Sign out"))
          ],
        ),
      ),
    );
  }
}
