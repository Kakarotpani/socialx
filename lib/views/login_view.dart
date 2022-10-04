import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:socialx/forms/login_form.dart';
import 'package:socialx/widgets/text_widgets.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RedTextTitle(title: 'SignIn into your'),
        const RedTextTitle(title: ' Account'),
        const LoginForm(),
        Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 12, bottom: 30),
          child: const RedTextnormal(title: 'Forgot Password ?'),
        ),
        Container(
          height: 100,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Login With',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Don\'t have an Account ? ',
                    style: TextStyle(
                      fontSize: 14
                    ),
                  ),
                  RedTextnormal(title: ' Register Now')
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}



