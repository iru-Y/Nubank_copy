import 'package:flutter/material.dart';
import 'package:nubank_copy/models/user_model.dart';
import 'package:nubank_copy/utils/custom_syles.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {

    UserModel? userModel;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
            title: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        InkResponse(
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
                        ),
                        const SizedBox(width: 170),
                        InkResponse(
                          onTap: (){

                          },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,

                          child: Image.asset('assets/icon/nubank-hidden-eye-icon.png' ,scale: 2.5,),

                        ),
                        const SizedBox(width: 25,),
                        InkResponse(
                          onTap: (){

                          },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,

                          child: Image.asset('assets/icon/nubank-ask-icon.png' ,scale: 2.5,),
                        ),
                        const SizedBox(width: 25,),
                        InkResponse(
                          onTap: (){

                          },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Image.asset('assets/icon/nubank-message-plus-icon.png' ,scale: 2.5,),
                        )],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Olá, $userModel'),
                    ],
                  ),
                ],
              ),
            ),
        )
    );
  }
}
