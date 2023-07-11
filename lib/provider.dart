import 'package:nubank_copy/domain/viewmodel/icon_viewmodel.dart';
import 'package:nubank_copy/domain/viewmodel/user_view_model.dart';
import 'package:provider/provider.dart';

final providers = [
    ChangeNotifierProvider<IconViewModel>(create: (_)=> IconViewModel()),
    // ChangeNotifierProvider<UserViewModel>(create: (_)=> UserViewModel()),
];