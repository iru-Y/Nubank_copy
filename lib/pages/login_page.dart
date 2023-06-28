import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/app_route.dart';

import '../utils/custom_syles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomStyles.nubank,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Image.asset('assets/images/icons8-nubank-200.png'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.32,
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
                     Size(350, 40)
                  )
                ),
                  child: const Text(
                      'Usar a senha do celular',
                    style: TextStyle(
                      color: CustomStyles.font
                    ),
                  ),
              ),
            ],
          ),
        )
        ),
    );
  }
}