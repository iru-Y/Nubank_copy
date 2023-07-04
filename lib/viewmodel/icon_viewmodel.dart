import 'package:nubank_copy/data/models/icon_model.dart';
import 'package:nubank_copy/services/icon_service.dart';

class IconViewModel {

  List<IconModel> headerIcons = IconService().getHeaderIcons();

  List<IconModel> accountIcons = IconService().getAccountIcons();

 }