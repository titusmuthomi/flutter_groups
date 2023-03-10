import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tito_groups/pages/auth/login_page.dart';

import '../../widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? fullname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Groupie",
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Create an Account now to Chat and Explore",
              style: TextStyle(fontSize: 15),
            ),
            Image.asset('assets/images/5495.jpg'),
            sizedBox15,
            TextFormField(
              decoration: textInputDecoration.copyWith(
                labelText: "Full Name",
                prefixIcon: Icon(
                  Icons.person,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              onChanged: (val) {
                setState(() {
                  fullname = val;
                });
              },
              validator: (val) {},
            ),
            const SizedBox(
              height: 15,
            ),
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
            sizedBox15,
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
                  child: const Text('Register')),
            ),
            sizedBox10,
            Text.rich(TextSpan(
                text: 'Already have an  account?',
                children: <TextSpan>[
                  TextSpan(
                      text: 'Login Here',
                      style: const TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          nextScreen(context, const LoginPage());
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
