import 'package:flutter/material.dart';
import 'package:nubank_copy/domain/models/icon_model.dart';
import 'package:nubank_copy/utils/shared_icons.dart';

class IconViewModel extends ChangeNotifier{

  List<IconModel> headerIcons = SharedIcons.ICONS_HEADER;

  List<IconModel> accountIcons = SharedIcons.ACCOUNT_ICONS;

  IconModel userProfileIcons = SharedIcons.USER_PROFILE_HEADER;

  List<IconModel> userProfileBodyIcons = SharedIcons.USER_PROFILE_BODY;
 }