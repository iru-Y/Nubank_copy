import 'package:nubank_copy/domain/models/user_model.dart';
import 'package:nubank_copy/domain/repositories/user_repository.dart';

class UserService {
  final userRepo = UserRepository();

   Future<UserModel> getUser() async {
   final body = await userRepo.getAllUsers();
   return body;
  }

  Future<void> postUser (UserModel userModel) async{
      userRepo.post(userModel);
  }
}