import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nubank_copy/domain/services/icon_service.dart';
import 'package:nubank_copy/utils/app_route.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/view/screens/invite_friends/invite_friends_view.dart';
import 'package:nubank_copy/view/widgets/user_future_builder.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {

  bool hidden = false;

  @override
  Widget build(BuildContext context) {


    final IconService icons = IconService();


    return UserFutureBuilder(
        builder: (userModel){

          return Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      top: 40,
                      left: 20,
                      right: 20,
                      bottom: 20
                  ),
                  decoration: const BoxDecoration(
                      color: CustomStyles.NUBANK
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: () =>
                                    Navigator.pushNamed(context,
                                        AppRoute.USER_PROFILE
                                    ),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundColor: CustomStyles.NUBANK_LIGTH,
                                  child: Image.asset(
                                      icons.headerIcons[0].pathIcon, scale: 2),
                                ),
                              )),
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      hidden = !hidden;
                                    });
                                  },
                                  child: hidden
                                      ? Image.asset(
                                      icons.headerIcons[1].pathIcon, scale: 2.5)
                                      :
                                  Image.asset(
                                    'assets/icons/nubank-open-eye-icon.png',
                                    scale: 2.5, color: Colors.white,)
                              ),
                              const SizedBox(width: 20),
                              Wrap(
                                  spacing: 20,
                                  runSpacing: 10,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(context,
                                              AppRoute.FAQ);
                                        },
                                        child: Image.asset(
                                            icons.headerIcons[2].pathIcon,
                                            scale: 2.5)

                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                            transitionDuration: const Duration(
                                                milliseconds: 500),
                                            pageBuilder: (_, __,
                                                ___) => const InviteFriendsView(),
                                            transitionsBuilder: (context,
                                                animation, secondaryAnimation,
                                                child) {
                                              return SlideTransition(
                                                position: Tween<Offset>(
                                                  begin: const Offset(1.0, 0.0),
                                                  end: Offset.zero,
                                                ).animate(animation),
                                                child: child,
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      child: Image.asset(
                                          icons.headerIcons[3].pathIcon,
                                          scale: 2.5),
                                    ),
                                  ]),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Olá, ${userModel.name}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )

                    ],
                  ),

                ),

                //Account sector

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 40,
                            left: 20,
                            right: 20,
                            bottom: 20
                        ),
                        child:
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Conta',
                                style: TextStyle(fontSize: 20),
                              ),
                              const SizedBox(height: 10),
                              hidden ? Container(
                                color: CustomStyles.BACKGROUND_BODY_ICON,
                                width: 210,
                                height: 32,) :
                              SizedBox(
                                  width: double.infinity,
                                  height: 32,
                                  child: Text('R\$ ${userModel.accountBalance}',
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700
                                    ),
                                  )
                              )
                            ]
                        )),

                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 120,
                        child:
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: icons.accountIcons.length,
                            itemBuilder: (context, index) =>
                                Column(
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      margin: const EdgeInsets.only(
                                          right: 10, bottom: 20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            100),
                                        color: CustomStyles
                                            .BACKGROUND_BODY_ICON,
                                      ),
                                      child: IconButton(
                                          onPressed: () {

                                          },
                                          icon: Image.asset(
                                              icons.accountIcons[index]
                                                  .pathIcon, scale: 2.5,
                                              color: Colors.black)),
                                    ),
                                    Expanded(child: Text(
                                        icons.accountIcons[index].title))
                                  ],
                                )),

                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.only(
                            top: 20,
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
                              Image.asset(
                                'assets/icons/nubank-my-cards-icon.png',
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
                                          margin: const EdgeInsets.only(
                                              left: 10),
                                          width: 260,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius
                                                  .circular(12),
                                              color: CustomStyles
                                                  .BACKGROUND_BODY_ICON
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
                                                  TextSpan(
                                                      text: 'informe de rendimentos ',
                                                      style: const TextStyle(
                                                          color: CustomStyles
                                                              .NUBANK
                                                      ),
                                                      recognizer: TapGestureRecognizer()
                                                        ..onTap = () {}),
                                                  const TextSpan(
                                                      text: '2023 já está diponível')
                                                ]
                                            )),
                                          )
                                      )),
                            ),
                          ),
                        )
                    ),
                  ],
                )
              ]);
        });}
}
