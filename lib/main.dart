import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/app_route.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/view/screens/home/home_view.dart';
import 'package:nubank_copy/view/screens/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: CustomStyles.NUBANK,
          appBarTheme: const AppBarTheme(
            color: CustomStyles.NUBANK
          ),
          fontFamily: 'GraphikMedium',


        ),
      routes: {
          AppRoute.HOME: (context) => const LoginView(),
          AppRoute.INITIAL_PAGE: (context)=> const HomeView()
      },
    );
  }
}
