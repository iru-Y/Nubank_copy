import 'package:flutter/material.dart';

class HomeBodyList extends StatelessWidget{
  const HomeBodyList({super.key});

  @override
  Widget build(BuildContext context) {

    return Wrap(

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ]
    );
  }

}