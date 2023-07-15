import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/view/widgets/scrollable_user_profile_widget.dart';
import 'package:nubank_copy/view/widgets/user_future_builder.dart';

import '../../../domain/services/icon_service.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {

    final icon = IconService();

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 449,
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
                      SizedBox(width: MediaQuery.of(context).size.width * 0.45),

                      IconButton(onPressed: (){

                      },
                        icon: Image.asset(icon.headerIcons[2].pathIcon, color: CustomStyles.PROFILE_USER_HEADER_ICONS, scale: 2.5),
                      ),
                      const SizedBox(width: 8),
                      IconButton(onPressed: (){

                      },
                        icon: Image.asset(icon.userProfileIcons.pathIcon, color: CustomStyles.PROFILE_USER_HEADER_ICONS, scale: 2.5,),
                      ),

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
                        UserFutureBuilder(
                            builder: (userModel)=> SizedBox(
                                width: 210,
                                height: 100,
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(userModel.name!,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15
                                            )),
                                        const SizedBox(height: 10),
                                        const Text(
                                              '**********************************\n'
                                                '**********************************\n'
                                                '**********************************',
                                          style: TextStyle(
                                            color: Colors.white
                                          ),
                                        ),
                                      ],
                                    ))))]),
                  const SizedBox(height: 13),
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
                            margin: const EdgeInsets.only(left: 120),
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

        Column(
          children: List.generate(icon.userProfileBodyIcons.length,
                  (index) =>
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: ScrollableUserProfileWidget(
                        leading: Image.asset(icon.userProfileBodyIcons[index].pathIcon, scale: 1.5,),
                        text: Text(icon.userProfileBodyIcons[index].title, style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        ),

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
