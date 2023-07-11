import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/custom_syles.dart';

class InviteFriendsWidget extends StatelessWidget {
  const InviteFriendsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,

      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.black,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: RichText(text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Convide amigos para o Nu e libere o brasão\n\n',
                      style: TextStyle(
                          fontSize: 30
                      ),

                    ),
                    TextSpan(
                        text: 'Salve as pessoas da burocracia. Para cada convite '
                            'aceito, um novo brasão é liberado.',
                        style: TextStyle(
                            color: Color(0xFFa4a4a4),
                            fontSize: 20
                        )
                    ),

                  ],

                )),

              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                child: SizedBox(
                    height: 500,
                    child: Image.asset('assets/images/invite_friends-image.png')),
              ),

            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(
                top: BorderSide(
                  color: CustomStyles.CONTAINER_COLOR_PROFILE_USER,
                  width: 2,
                )),
        ),
        child: TextButton(onPressed: (){
          Navigator.pop(context);
        },
            style:  const ButtonStyle(
                fixedSize:MaterialStatePropertyAll<Size>(
                  Size(double.infinity, 55),
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(
                    CustomStyles.NUBANK
                ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(45))
                )
              )
            ),
            child: const Text('Convidar amigos', style: TextStyle(
              color: Colors.white,
              fontSize: 15
            ))
        ),
      ),
    );
  }
}



