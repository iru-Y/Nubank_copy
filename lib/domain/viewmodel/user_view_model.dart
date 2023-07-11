// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:nubank_copy/domain/models/user_model.dart';
// import 'package:nubank_copy/utils/api_path.dart';
//
// class UserViewModel extends ChangeNotifier{
//   Future<UserModel> findByID(int id) async {
//     final response = await http.get(Uri.parse('$apiPath/users/$id'));
//     if (response.statusCode == 200) {
//       final jsonData = jsonDecode(response.body);
//       final userModel = UserModel.fromJson(jsonData);
//       return userModel;
//     }
//     throw Exception('Falha ao carregar o usuário');
//   }
// }
