import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.red),
            height: 300.0,
            width: 300.0,
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('AWESOME'),
                RotateAnimatedText('OPTIMISTIC'),
                RotateAnimatedText(
                  'DIFFERENT',
                  textStyle: const TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
              isRepeatingAnimation: true,
              totalRepeatCount: 10,
            ),
          ),
        ));

  }}
