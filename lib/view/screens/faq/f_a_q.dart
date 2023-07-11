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

    return SafeArea(
      child: Scaffold(
          body: AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText('ESSE PROJETO É APENAS PARA FINS DE APRENDIZADO',
                  textStyle: const TextStyle(
                    fontSize: 20
                  )),
              RotateAnimatedText('TODOS OS DIREITOS RESERVADOS A NUBANK', textStyle: const TextStyle(
                  fontSize: 20
              )),
              RotateAnimatedText(
                'Visite meu Linkedin e Github',
                textStyle: const TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          )),
    );

  }}
