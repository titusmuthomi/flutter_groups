import 'package:flutter/material.dart';
import 'package:tito_groups/shared/constants.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Themed.secondaryColor, width: 2.0),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Themed.primaryColor, width: 2.0),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Themed.errorColor, width: 2.0),
  ),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

const SizedBox sizedBox25 = SizedBox(height: 25);
const SizedBox sizedBox10 = SizedBox(height: 10);
const SizedBox sizedBox20 = SizedBox(height: 20);
const SizedBox sizedBox15 = SizedBox(height: 15);
