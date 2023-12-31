import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/app_route.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/view/screens/faq/faq_view.dart';
import 'package:nubank_copy/view/screens/home/home_view.dart';
import 'package:nubank_copy/view/screens/invite_friends/invite_friends_view.dart';
import 'package:nubank_copy/view/screens/login/login_view.dart';
import 'package:nubank_copy/view/screens/user_profile/user_profile_view.dart';


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
            AppRoute.INITIAL_PAGE: (context)=> const HomeView(),
            AppRoute.USER_PROFILE: (context) => const UserProfileView(),
            AppRoute.INVITE_FRIENDS: (context) => const InviteFriendsView(),
            AppRoute.FAQ: (context) => const FAQView()
        },
      );
  }
}
