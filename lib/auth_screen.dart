import 'package:flutter/material.dart';
import 'package:login_app/login_screen.dart';
import 'package:login_app/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showLogin = true;

  void toggleAuth(){
    setState(() {
      showLogin = !showLogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        child: showLogin
            ? LoginScreen(key: ValueKey('login'), onSingUpTap: toggleAuth)
            : SignupScreen(
                key: ValueKey('signup'),
                onLoginTap: toggleAuth,
              ));
  }
}
