import 'package:flutter/material.dart';

import 'user_profile.dart';

class UserProfileView extends StatelessWidget{
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserProfile()
          ],
        ),
      ),
    );
  }

}