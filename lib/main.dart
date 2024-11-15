import 'package:flutter/material.dart';
import 'package:flutter_application_1/anim/test_animation_2_page.dart';
import 'package:flutter_application_1/anim/test_animation_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExplicitAnimations(),
    );
  }
}
