import 'package:nubank_copy/viewmodel/icon_viewmodel.dart';
import 'package:nubank_copy/viewmodel/on_tap_viewmodel.dart';
import 'package:provider/provider.dart';

final providers = [
  ChangeNotifierProvider<OneTapViewModel>(create: (_)=> OneTapViewModel()),

  ChangeNotifierProvider<IconViewModel>(create: (_)=> IconViewModel())
];