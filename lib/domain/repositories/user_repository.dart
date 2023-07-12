import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nubank_copy/domain/models/user_model.dart';
import 'package:nubank_copy/utils/api_path.dart';

class UserRepository {

    Future<UserModel> getAllUsers () async{
    final response = await http.get(Uri.parse('$apiPath/user/1'));

    if (response.statusCode == 200) {
      final user = jsonDecode(response.body);
      return UserModel.fromJson(user);
    }
    throw Exception('User não encontrado');
  }

  Future<void> post (UserModel userModel) async {
    final response = await http.post(Uri.parse('$apiPath/user/'));
    jsonEncode(response.body);
      userModel.toJson();
  }
}