import 'package:flutter/material.dart';
import 'package:socialx/forms/register_form.dart';
import 'package:socialx/widgets/container_widgets.dart';
import 'package:socialx/widgets/text_widgets.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainContainer(
          column: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RedTextTitle(title: 'Create an'),
              const RedTextTitle(title: ' Account'),
              const RegisterForm(),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: checkValue,
                          onChanged: (value) {
                            setState(() {
                              checkValue = value!;
                            });
                          },
                        ),
                        const SizedBox(width: 16),
                        const Text('I agree with ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: const Text(
                            'term & condition',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an Account ? ',
                          style: TextStyle(
                            fontSize: 14
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            
                          },
                          child: const RedTextnormal(
                            title: ' Sign In!'
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ),
        const Spacer(),
        BottomContainer(
          inkwell: InkWell(
            onTap: (() {
              
            }),
            child: const BottomText(title: 'REGISTER')
          ),
        )
      ],
    );
  }
}