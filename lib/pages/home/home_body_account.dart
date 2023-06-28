import 'package:flutter/material.dart';
import 'package:nubank_copy/models/user_model.dart';

class HomeBodyAccount extends StatelessWidget{
  const HomeBodyAccount({super.key});

  @override
  Widget build(BuildContext context) {

    UserModel? _userModel;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Conta',
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('R\$ ${_userModel?.accountBalance}',
                  style: const TextStyle(
                      fontFamily: 'GraphikBold',
                      fontSize: 30
                  ),
                ),
              ],
            )
          ],
        ),
      ),);
  }
}