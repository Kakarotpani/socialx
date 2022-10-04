import 'package:flutter/material.dart';
import 'package:socialx/widgets/icon_widgets.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Form(
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text('Email'),
                suffixIcon: FormIcon(icon: Icons.email)
              )
            ),
            const SizedBox(height: 8),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text('password'),
                suffixIcon: FormIcon(icon: Icons.lock_outline)
              )
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}