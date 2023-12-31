import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final emailController = TextEditingController();
  final passwordControler = TextEditingController();

  //signIn user
  void signIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              //logo
              Icon(
                Icons.message,
                size: 80,
                color: Colors.grey[800],
              ),
              //welcome back message
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome back you have been missed",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //email text field
              MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obsecureText: false),
              const SizedBox(
                height: 10,
              ),
              MyTextField(
                  controller: passwordControler,
                  hintText: 'Password',
                  obsecureText: true),
              //sign in button
              const SizedBox(
                height: 25,
              ),
              MyButton(onTap: signIn, text: "Sign In"),
              const SizedBox(
                height: 50,
              ),
              //not a member? register now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not a member?'),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
