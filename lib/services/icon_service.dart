import 'package:nubank_copy/data/models/icon_model.dart';
import 'package:nubank_copy/data/shared_icons_data.dart';

class IconService {
  List<IconModel> getHeaderIcons() {
      return SharedIconsData.iconsHeader;
  }

  List<IconModel> getAccountIcons () {
      return SharedIconsData.accountIcons;
  }
}