import 'package:flutter/material.dart';
import 'package:socialx/widgets/icon_widgets.dart';
import 'package:flag/flag.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController numberController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text('name'),
                suffixIcon: FormIcon(icon: Icons.person)
              )
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text('Email'),
                suffixIcon: FormIcon(icon: Icons.email)
              )
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text('Contact no',
                style: TextStyle(
                  fontSize: 16
                ),
              )
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Flag.fromCode(
                  FlagsCode.IN,
                  height: 30,
                  width: 40,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 6),
                const Text('IN  +91',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                  ),
                ),
                const SizedBox(width: 6),
                InkWell(
                  onTap: (){},
                  child: const Icon(
                    Icons.arrow_drop_down_sharp,
                   color: Colors.grey
                  ),
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: TextField(
                    controller: numberController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      suffixIcon: FormIcon(icon: Icons.phone),
                    )
                  ),
                ),
              ],
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                label: Text('password'),
                suffixIcon: FormIcon(icon: Icons.lock_outline)
              )
            ),
            //const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}