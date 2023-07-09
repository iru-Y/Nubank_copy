import 'package:flutter/widgets.dart';
import 'package:nubank_copy/data/models/user_model.dart';

class UserViewModel extends ChangeNotifier{
  UserModel _userModel = UserModel('Edilson Silva Lopes', 'password', 'email', '500.000,00');

  UserModel get userModel => _userModel;

  set userModel(UserModel value) {
    _userModel = value;
  }
}