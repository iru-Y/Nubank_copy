import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/custom_syles.dart';

class EmptyUserDataWidget extends StatelessWidget {
  const EmptyUserDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 134,
        decoration: const BoxDecoration(
          color: CustomStyles.NUBANK
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            },
                icon: Icon(
                    Platform.isIOS ? Icons.arrow_back_ios :
                    Icons.arrow_back,
                  color: Colors.white,
                )),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text('Por favor, para exibir informações da conta, retorne a página inicial e realize seu cadastro',
              style: TextStyle(
                color: Colors.white,
                fontSize: 19
              )),
            )
          ],
        ),
      ),
    );
  }
}
