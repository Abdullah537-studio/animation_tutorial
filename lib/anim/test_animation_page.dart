// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  _AnimatedBuilderExampleState createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          return Container(
            color: Colors.white,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [Colors.purple, Colors.pink, Colors.yellow],
                stops: [0, _controller.value, 1],
              ),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
