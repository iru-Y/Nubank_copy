class CustomIconHeaderModel {
  int _id;
  String _title;
  String _pathIcon;

  CustomIconHeaderModel({
    required int id,
    required String title,
    required String pathIcon
  }) : _id = id,
        _pathIcon = pathIcon,
       _title = title;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get pathIcon => _pathIcon;

  set pathIcon(String value) {
    _pathIcon = value;
  }

}