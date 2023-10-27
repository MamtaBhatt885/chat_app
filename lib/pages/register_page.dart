import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordControler = TextEditingController();
  final confirmControler = TextEditingController();

//signup user
  void signUp() {}

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
              //Create account message
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome to the chat app",
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

              //pasword text field
              MyTextField(
                  controller: passwordControler,
                  hintText: 'Password',
                  obsecureText: true),
              const SizedBox(
                height: 10,
              ),

              //confirm password textfield
              MyTextField(
                  controller: confirmControler,
                  hintText: 'Confirm Password',
                  obsecureText: true),

              //sign in button
              const SizedBox(
                height: 25,
              ),

              MyButton(onTap: signUp, text: "Sign Up"),
              const SizedBox(
                height: 50,
              ),

              //Already a member? Login now

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already a member?'),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child:const Text(
                      'Login now',
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
