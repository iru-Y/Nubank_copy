import 'package:nubank_copy/data/models/icon_model.dart';

abstract class DummyData {
  static final dummyIconsHeader =[
    IconModel(
        id: 1,
        title: 'personIcon',
        pathIcon: 'assets/icon/nubank-person-icon.png'
    ),
    IconModel(
        id: 2,
        title: 'hiddenEye',
        pathIcon: 'assets/icon/nubank-hidden-eye-icon.png'
    ),
    IconModel(
        id: 3,
        title: 'askIcon',
        pathIcon: 'assets/icon/nubank-ask-icon.png'),
    IconModel(id: 4,
        title: 'messagePlusIcon',
        pathIcon: 'assets/icon/nubank-message-plus-icon.png'
    )
  ];

}

