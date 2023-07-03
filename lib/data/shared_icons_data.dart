import 'package:nubank_copy/data/models/icon_model.dart';

abstract class SharedIconsData {
  static final iconsHeader =[
    IconModel(
        id: 1,
        title: 'personIcon',
        pathIcon: 'assets/icon/nubank-person-icon.png'
    ),
    IconModel(
        id: 2,
        title: 'hiddenEyeIcon',
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
  static final accountIcons = [
    IconModel(
        id: 1,
        title: 'Àrea Pix',
        pathIcon: 'assets/icon/nubank-pix-icon.png'),
    IconModel(
        id: 2,
        title: 'Pagar',
        pathIcon: 'assets/icon/nubank-pay-icon.png'),
    IconModel(
        id: 3,
        title: 'Transferir',
        pathIcon: 'assets/icon/nubank-transfer-icon.png'),
    IconModel(
        id: 4,
        title: 'Depositar',
        pathIcon: 'assets/icon/nubank-deposity-icon.png'),
    IconModel(
        id: 5,
        title: 'Recarga',
        pathIcon: 'assets/icon/nubank-recharge-icon.png'),
    IconModel(
        id: 6,
        title: 'Cobrar',
        pathIcon: 'assets/icon/nubank-bill-icon.png'),
    IconModel(
        id: 7,
        title: 'Transferir\n Internac.',
        pathIcon: 'assets/icon/nubank-internacional-transfer.png')
  ];
}

