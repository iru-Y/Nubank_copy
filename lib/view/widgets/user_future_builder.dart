import 'package:flutter/material.dart';
import 'package:nubank_copy/domain/models/user_model.dart';
import 'package:nubank_copy/domain/services/user_service.dart';
import 'package:nubank_copy/exceptions/custom_socket_exception.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/view/widgets/empty_user_data_widget.dart';

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
          if (!snapshot.hasData){
            final UserModel userModel = UserModel(id: 0,
                name: 'Sem dados do usuário',
                password: '************',
                email: '*************',
                accountBalance: 'Sem dados da conta');

               return builder(userModel);
          }
          if (snapshot.hasError){
            throw CustomSocketException(
                statusCode: 503,
                msg: 'Dados não encontrados ou servidor indisponível');
          }

          final userModel = snapshot.data;

            return builder(userModel!);

        });
  }
}
