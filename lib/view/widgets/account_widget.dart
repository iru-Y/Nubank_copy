import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nubank_copy/services/on_tap__service.dart';
import 'package:nubank_copy/utils/custom_syles.dart';

import '../../viewmodel/icon_viewmodel.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icons = IconViewModel().accountIcons;
    final onTap = OnTapService.onTapAccountFunction;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child:
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conta',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  'R\$ 3.230,00',
                  style: TextStyle(fontSize: 30),

                ),
              ]
          ),),

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 105,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: icons.length,
                itemBuilder: (context, index) =>
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(right: 10, bottom: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: CustomStyles.BACKGROUND_BODY_ICON,
                          ),
                          child: IconButton(
                              onPressed: onTap[index].onTap,
                              icon: Image.asset(icons[index].pathIcon, scale: 2.5, color: Colors.black)),
                        ),
                        Text(icons[index].title)
                      ],
                    )),
          ),
        ),
        GestureDetector(
          onTap: (){
            print('certo');
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(
              top: 30,
              bottom: 20,
              left: 20,
              right: 20
            ),
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: CustomStyles.BACKGROUND_BODY_ICON,
                borderRadius: BorderRadius.circular(12)
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/icon/nubank-my-cards-icon.png',
                    scale: 2.5,
                    color: Colors.black,),
                  const SizedBox(width: 20,),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text('Meus Cartões'),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: List<Widget>.generate(2,
                        (int index) =>
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 260,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: CustomStyles.BACKGROUND_BODY_ICON
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 30
                            ),
                            child: RichText(text: TextSpan(
                              style: const TextStyle(
                                color: Colors.black
                              ),
                              children: [
                                const TextSpan(text: 'Seu '),
                                TextSpan(text: 'informe de rendimentos ',
                                    style: const TextStyle(
                                      color: CustomStyles.NUBANK
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = (){
                                  print('object');
                                      }),
                                const TextSpan(text: '2023 já está diponível')
                              ]
                            )),
                          )
                        )),
              ),
            ),
          )

        )
      ],
    );}
}
