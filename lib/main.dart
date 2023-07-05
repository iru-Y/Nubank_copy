import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/app_route.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/view/screens/home/home_view.dart';
import 'package:nubank_copy/view/screens/login/login_view.dart';
import 'package:nubank_copy/view/screens/user_profile/user_profile_view.dart';
import 'package:provider/provider.dart';

import 'viewmodel/on_tap_viewmodel.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (_)=> OneTapViewModel(),
      child: MaterialApp(
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
            AppRoute.INITIAL_PAGE: (context)=> const HomeView(),
            AppRoute.USER_PROFILE: (context) => const UserProfileView()
        },
      ),
    );
  }
}
