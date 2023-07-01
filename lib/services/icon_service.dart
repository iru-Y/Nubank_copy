import 'package:nubank_copy/data/models/icon_model.dart';
import 'package:nubank_copy/data/repository/dummy_data.dart';

class IconService {
  List<IconModel> getIcons() {
      return DummyData.dummyIconsHeader;
  }
}