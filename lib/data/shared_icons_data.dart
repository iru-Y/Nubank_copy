import 'package:nubank_copy/data/models/icon_model.dart';

abstract class SharedIconsData {
  static final ICONS_HEADER =[
    IconModel(
        id: 1,
        title: 'personIcon',
        pathIcon: 'assets/icons/nubank-person-icon.png'
    ),
    IconModel(
        id: 2,
        title: 'hiddenEyeIcon',
        pathIcon: 'assets/icons/nubank-hidden-eye-icon.png'
    ),
    IconModel(
        id: 3,
        title: 'askIcon',
        pathIcon: 'assets/icons/nubank-ask-icon.png'),
    IconModel(id: 4,
        title: 'messagePlusIcon',
        pathIcon: 'assets/icons/nubank-message-plus-icon.png'
    )
  ];
  static final ACCOUNT_ICONS = [
    IconModel(
        id: 1,
        title: 'Àrea Pix',
        pathIcon: 'assets/icons/nubank-pix-icon.png'),
    IconModel(
        id: 2,
        title: 'Pagar   ',
        pathIcon: 'assets/icons/nubank-pay-icon.png'),
    IconModel(
        id: 3,
        title: 'Transferir',
        pathIcon: 'assets/icons/nubank-transfer-icon.png'),
    IconModel(
        id: 4,
        title: 'Depositar',
        pathIcon: 'assets/icons/nubank-deposity-icon.png'),
    IconModel(
        id: 5,
        title: 'Recarga',
        pathIcon: 'assets/icons/nubank-recharge-icon.png'),
    IconModel(
        id: 6,
        title: 'Cobrar   ',
        pathIcon: 'assets/icons/nubank-bill-icon.png'),
    IconModel(
        id: 7,
        title: 'Transferir\n Internac.',
        pathIcon: 'assets/icons/nubank-internacional-transfer.png')
  ];
  static final USER_PROFILE_HEADER = [
      IconModel(
          id: 1,
          title: 'notificationIcon',
          pathIcon: 'assets/icons/nubank-notification-icon.png')
  ];
}

