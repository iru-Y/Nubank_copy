import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nubank_copy/domain/models/user_model.dart';
import 'package:nubank_copy/domain/viewmodel/user_view_model.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:provider/provider.dart';

import '../../../domain/viewmodel/icon_viewmodel.dart';

class UserProfileHeaderWidget extends StatelessWidget {
  const UserProfileHeaderWidget({super.key});

  Widget container ({required Image leading, required Text text}) {
    return Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(
                bottom: BorderSide(
                    color: CustomStyles.CONTAINER_COLOR_PROFILE_USER,
                    width: 2
                )
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
              children: [
                leading,
                const SizedBox(width: 20),
                Container(
                    width: 170,
                    height: 100,
                    margin: const EdgeInsets.only(right: 70, top: 13),
                    child: text
                ),
                Platform.isIOS ? const Icon(Icons.chevron_right, color: Colors.white,) :
                const Icon(Icons.arrow_forward, color: Colors.white,)
              ]
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {

    final icon = Provider.of<IconViewModel>(context);

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 416,
          decoration: const BoxDecoration(
              color: CustomStyles.BACKGROUND_HEADER_USER_PROFILE
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                          icon: const Icon(
                            Icons.close,
                            color: CustomStyles.PROFILE_USER_HEADER_ICONS,
                            size: 25,
                          )
                      ),
                      const SizedBox(width: 200),

                      Row(
                          children: [
                            IconButton(onPressed: (){

                            },
                              icon: Image.asset(icon.headerIcons[2].pathIcon, color: CustomStyles.PROFILE_USER_HEADER_ICONS, scale: 2.5),
                            ),
                            const SizedBox(width: 8),
                            IconButton(onPressed: (){

                            },
                              icon: Image.asset(icon.userProfileIcons.pathIcon, color: CustomStyles.PROFILE_USER_HEADER_ICONS, scale: 2.5,),
                            )]),

                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){

                        },
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: CustomStyles.NUBANK_LIGTH,
                          child: Image.asset(icon.headerIcons[0].pathIcon, scale: 2),
                        ),
                      ),
                      const SizedBox(width: 30),
                      Consumer<UserViewModel>(
                        builder: (context, value, child) =>
                         SizedBox(
                              width: 210,
                              height: 32,
                              child: Text(
                                'R\$ ${value.findByID(1)}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )

                      )


                    ],
                  ),
                  const SizedBox(height: 13,),
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(49, 49, 49, 1),
                        borderRadius: BorderRadius.circular(13)
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/nubank_nucoin_icon.png', scale: 1.5),
                        const SizedBox(width: 20,),
                        const Text('Nucoin', style: TextStyle(
                          color: Colors.white,
                        ),),
                        Container(
                            margin: const EdgeInsets.only(left: 160),
                            width: 50,
                            height: 25,
                            decoration: BoxDecoration(
                                color: CustomStyles.NUBANK,
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child:  const Center(
                              child: Text('Novo', style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 33),
                  Container(
                    width: double.infinity,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(
                      child: Text('Acessar outra conta',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          )),
                    ),
                  )
                ],
              )
          ),
        ),
        Consumer<IconViewModel>(
          builder: (context, value, child) =>
              Column(
                  children: List.generate(value.userProfileBodyIcons.length,
                          (index) =>
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: container(
                              leading: Image.asset(value.userProfileBodyIcons[index].pathIcon, scale: 1.5,),
                              text: Text(value.userProfileBodyIcons[index].title, style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              )),

                            ),
                          ))
              ),
        ),
        Container(
            width: double.infinity,
            height: 120,
            decoration: const BoxDecoration(
                color: Colors.black
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(34, 34, 34, 1),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/nubank-back-user-profile.png', scale: 1.5),
                      const SizedBox(width: 10),
                      const Text('Sair do aplicativo', style: TextStyle(
                          color: Colors.white,
                          fontSize: 15
                      ),
                      )
                    ],
                  ),
                ),
              ),
            )
        )
      ],
    );
  }

}
