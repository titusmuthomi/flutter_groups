import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tito_groups/pages/auth/register_page.dart';

import '../../widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: SingleChildScrollView(
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Groupie",
              style: TextStyle(fontSize: 40),
            ),
            sizedBox10,
            const Text(
              "Login to see what they are Talking",
              style: TextStyle(fontSize: 15),
            ),
            Image.asset('assets/images/6520.jpg'),
            sizedBox20,
            TextFormField(
              decoration: textInputDecoration.copyWith(
                labelText: "Email",
                prefixIcon: Icon(
                  Icons.email,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              onChanged: (val) {
                setState(() {
                  email = val;
                });
              },
              validator: (val) {},
            ),
            sizedBox25,
            TextFormField(
              obscureText: true,
              decoration: textInputDecoration.copyWith(
                labelText: "Password",
                prefixIcon: Icon(
                  Icons.lock,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              validator: (val) {
                if (val!.length < 6) {
                  return "password Must be atleast 6 Characters";
                } else {
                  return null;
                }
              },
              onChanged: (val) {
                setState(() {
                  password = val;
                });
              },
            ),
            sizedBox25,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0)))),
                  onPressed: () {
                    login();
                  },
                  child: const Text('Login')),
            ),
            sizedBox25,
            Text.rich(
                TextSpan(text: 'Dont have an  account?', children: <TextSpan>[
              TextSpan(
                  text: 'Register Here',
                  style: const TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      nextScreen(context, const RegisterPage());
                    })
            ]))
          ],
        )),
      ),
    ));
  }

  login() {
    //if(formKey)
  }
}
