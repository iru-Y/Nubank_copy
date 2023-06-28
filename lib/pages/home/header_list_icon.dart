import 'package:flutter/material.dart';

import '../../utils/custom_syles.dart';
class HeaderListIcon extends StatelessWidget{
  const HeaderListIcon({super.key});

  @override
  Widget build(BuildContext context) {
      return InkResponse(
        onTap: (){

        },
        radius: 31,
        child: Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(13),
          decoration: BoxDecoration(
            color: CustomStyles.nubank_ligth,
            borderRadius: BorderRadius.circular(30),

          ),
          child: Image.asset('assets/icon/nubank-person-icon.png'),
        ),
      );
  }

}