import 'package:flutter/material.dart';
import 'package:nubank_copy/pages/initial_page.dart';
import 'package:nubank_copy/pages/login_page.dart';
import 'package:nubank_copy/utils/app_route.dart';
import 'package:nubank_copy/utils/custom_syles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: ThemeData(
          primaryColor: CustomStyles.nubank,
          appBarTheme: const AppBarTheme(
            color: CustomStyles.nubank
          ),
          fontFamily: 'GraphikMedium',


        ),
      routes: {
          AppRoute.HOME: (context) => const LoginPage(),
          AppRoute.INITIAL_PAGE: (context)=> const InitialPage()
      },
    );
  }
}