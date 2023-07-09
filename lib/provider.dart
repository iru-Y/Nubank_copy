import 'package:nubank_copy/viewmodel/icon_viewmodel.dart';
import 'package:provider/provider.dart';

import 'viewmodel/user_view_model.dart';

final providers = [
    ChangeNotifierProvider<IconViewModel>(create: (_)=> IconViewModel()),
    ChangeNotifierProvider<UserViewModel>(create: (_)=> UserViewModel()),
];