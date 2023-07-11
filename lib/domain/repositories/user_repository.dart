import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nubank_copy/domain/models/user_model.dart';
import 'package:nubank_copy/utils/api_path.dart';

class UserRepository {

  Future<List<UserModel>> getAllUsers () async{
    final response = await http.get(Uri.parse('$apiPath/user'));

    if (response.statusCode == 200) {
      final user = jsonDecode(response.body);
      return (user as List).map((e) => UserModel.fromJson(e)).toList();
    }
    throw Exception('User não encontrado');
  }


}