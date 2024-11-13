import 'package:flutter/material.dart';

class TestAnimationPage extends StatefulWidget {
  const TestAnimationPage({super.key});

  @override
  State<TestAnimationPage> createState() => _TestAnimationPageState();
}

class _TestAnimationPageState extends State<TestAnimationPage> {
  BoxShape shape = BoxShape.circle;
  double elev = 0.0;
  Color shadowColor = Colors.grey;
  Color color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("start animation"),
      ),
      body: Container(
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  shape = BoxShape.rectangle;
                  elev = 20;
                  shadowColor = Colors.black;
                  color = Colors.blue;
                });
              },
              child: AnimatedPhysicalModel(
                shape: shape,
                animateColor: true,
                elevation: elev,
                color: color,
                shadowColor: shadowColor,
                duration: const Duration(seconds: 2),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  alignment: Alignment.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
