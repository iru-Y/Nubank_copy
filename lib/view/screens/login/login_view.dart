import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/app_route.dart';

import '../../../utils/custom_syles.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomStyles.NUBANK,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                  height: 170,
                ),
                Expanded(
                    child: Image.asset('assets/images/icons8-nubank-200.png')),
                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                    onPressed: ()=> Navigator.of(context).pushNamed(
                      AppRoute.INITIAL_PAGE
                    ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      )),
                    fixedSize: const MaterialStatePropertyAll(
                       Size(350, 20)
                    )
                  ),
                    child: const Text(
                        'Usar a senha do celular',
                      style: TextStyle(
                        color: CustomStyles.FONT
                      ),
                    ),
                ),
              ],
            ),
          ),
        )
        ),
    );
  }
}
