import 'package:flutter/material.dart';
import 'package:nubank_copy/domain/models/user_model.dart';
import 'package:nubank_copy/domain/services/user_service.dart';
import 'package:nubank_copy/utils/custom_syles.dart';

class UserFutureBuilder extends StatelessWidget {
  final Widget Function(UserModel userModel) builder;

  const UserFutureBuilder({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userService = UserService();

    return FutureBuilder<UserModel>(
        future: userService.getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator(
              color: CustomStyles.NUBANK,
            );
          }
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          if (!snapshot.hasData) {
            return const Text('No data available');
          }
          final userModel = snapshot.data!;
          return builder(userModel);
        });
  }
}
