import 'package:flutter/material.dart';

import 'widgets/user_profile_header_widget.dart';

class UserProfileView extends StatelessWidget{
  const UserProfileView({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Column(
        children: [
          UserProfileHeaderWidget()
        ],
      ),
    );
  }

}