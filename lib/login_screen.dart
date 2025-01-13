import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/custom_field.dart';

class LoginScreen extends StatelessWidget {
  final VoidCallback onSingUpTap;
  const LoginScreen({Key? key, required this.onSingUpTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FD),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            FadeInDown(
              duration: Duration(milliseconds: 500),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFF4A154B).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text('Welcome back', 
                      style: TextStyle(
                        color: Color(0xFF4A154B),
                        fontWeight: FontWeight.w600,
                      ),),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text('Log in to your\naccount',
                    style: TextStyle(
                      color: Color(0xFF1D1C1D),
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      fontSize: 36,
                    ),),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            FadeInUp(
              duration: Duration(milliseconds: 600),
              delay: Duration(milliseconds: 200),
              child: Column(
                children: [
                  CustomTextField(
                      icon: CupertinoIcons.mail,
                      hint: 'Email',
                      gradientColors: [
                        Color(0xFF4A154B),
                        Color(0xFF6B1A6B),
                      ]),
                  SizedBox(
                    height: 16,
                  ),
                  CustomTextField(
                      icon: CupertinoIcons.lock,
                      hint: 'Password',
                      gradientColors: [
                        Color(0xFF4A154B),
                        Color(0xFF6B1A6B),
                      ]),
                ],
              ),
            )
          ],
        ),
        ),

      )),
    );
  }

}