import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/viewmodel/icon_viewmodel.dart';
import 'package:nubank_copy/viewmodel/on_tap_viewmodel.dart';
import 'package:provider/provider.dart';

class AccountWidget extends StatefulWidget {
  const AccountWidget({Key? key}) : super(key: key);

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    final icons = IconViewModel().accountIcons;
    final onTapServices = Provider.of<OneTapViewModel>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child:
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Conta',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                Consumer<OneTapViewModel>(
                  builder: (context, value, _) =>
                  value.headerOnTap[0].hidden ? const Text('****') : const Text('500,00')
                )
              ]
          ),),

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 120,
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
                              onPressed: onTapServices.headerOnTap[0].onTap,
                              icon: Image.asset(icons[index].pathIcon, scale: 2.5, color: Colors.black)),
                        ),
                        Expanded(child: Text(icons[index].title))
                      ],
                    )),
          ),

        ),
        GestureDetector(
          onTap: (){
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
                  Image.asset('assets/icons/nubank-my-cards-icon.png',
                    scale: 2.5,
                    color: Colors.black,),
                  const SizedBox(width: 20),
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
                                      }),
                                const TextSpan(text: '2023 já está diponível')
                              ]
                            )),
                          )
                        )),
              ),
            ),
          )

        ),
      ],

    );}
}
