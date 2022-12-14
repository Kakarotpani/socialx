import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:socialx/forms/login_form.dart';
import 'package:socialx/services/auth-services.dart';
import 'package:socialx/views/landing_view.dart';
import 'package:socialx/widgets/container_widgets.dart';
import 'package:socialx/widgets/text_widgets.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  String? errorMessage = '';

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  void validate(){
    if(formKey.currentState!.validate()){
      signInWithEmailAndPassword();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainContainer(
          column: Column(
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
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Login With',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Image.asset('assets/images/google_logo.png', scale: 64)
                        ),
                        const SizedBox(width: 60),
                        InkWell(
                          child: Image.asset('assets/images/facebook_logo.png', scale: 30)
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an Account ? ',
                          style: TextStyle(
                            fontSize: 14
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LandingView(index:1)),
                            );
                          },
                          child: const RedTextnormal(
                            title: ' Register Now'
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        BottomContainer(
          inkwell: InkWell(
            onTap: (() {
              validate();
            }),
            child: const BottomText(title: 'LOGIN')
          ),
        )
      ],
    );
  }
}



