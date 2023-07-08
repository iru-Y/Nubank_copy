import 'package:flutter/material.dart';
import 'package:nubank_copy/data/models/icon_model.dart';
import 'package:nubank_copy/services/icon_service.dart';

class IconViewModel extends ChangeNotifier{

  List<IconModel> headerIcons = IconService().getHeaderIcons();

  List<IconModel> accountIcons = IconService().getAccountIcons();

  IconModel userProfileIcons = IconService().getUserProfileIcons();

  List<IconModel> userProfileBodyIcons = IconService().getUserProfileBodyIcons();
 }