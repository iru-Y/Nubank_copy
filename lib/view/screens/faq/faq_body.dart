import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FaqBody extends StatelessWidget {
  const FaqBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

        TextStyle textStyle = const TextStyle(
            fontSize: 20,
            color: Colors.white
        );

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText('ESSE PROJETO É APENAS PARA FINS DE APRENDIZADO',
                  duration: const Duration(seconds: 10),
                  textStyle: textStyle),
              
              ScaleAnimatedText('TODOS OS DIREITOS RESERVADOS A NUBANK',
                  duration: const Duration(seconds: 10),
                  textStyle: textStyle),

              RotateAnimatedText(
                'VISITE MEU LINKEDIN E GITHUB',
                  duration: const Duration(seconds: 10),
                textStyle: textStyle
              ),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Voltar para a página inicial'))
        ],
      ),
    );
  }
}
