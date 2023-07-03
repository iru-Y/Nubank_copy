import 'package:flutter/material.dart';
import 'package:nubank_copy/services/on_tap__service.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/viewmodel/icon_viewmodel.dart';

class HeaderWidget extends StatelessWidget{
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final icon = IconViewModel().headerIcons;
    final gesture = OnTapService.onTapHeaderFunction;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: gesture[0].onTap,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: CustomStyles.NUBANK_LIGTH,
                  child: Image.asset(icon[0].pathIcon, scale: 2)
                ),
              ),
            ),
            Wrap(
              spacing: 20,
              runSpacing: 10,
              children: List<Widget>.generate(icon.length - 1, (index) {
                final ic = icon[index + 1];
                final onTap = gesture[index + 1].onTap;
                return GestureDetector(
                  onTap: onTap,
                  child: Image.asset(ic.pathIcon, scale: 2.5),
                );
              }),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Align(
          alignment: Alignment.bottomLeft,
            child: Text('Olá, yuri')
        ),
      ],
    );
  }
}