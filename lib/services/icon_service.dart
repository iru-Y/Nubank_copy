import 'package:nubank_copy/data/models/icon_model.dart';
import 'package:nubank_copy/data/shared_icons_data.dart';

class IconService {
  List<IconModel> getHeaderIcons() {
      return SharedIconsData.ICONS_HEADER;
  }

  List<IconModel> getAccountIcons () {
      return SharedIconsData.ACCOUNT_ICONS;
  }

  IconModel getUserProfileIcons () {
    return SharedIconsData.USER_PROFILE_HEADER;
  }

  List<IconModel> getUserProfileBodyIcons () {
    return SharedIconsData.USER_PROFILE_BODY;
  }
}