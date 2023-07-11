
import 'package:nubank_copy/domain/models/icon_model.dart';

abstract class SharedIcons {
  static final ICONS_HEADER =[
    IconModel(
        id: 1,
        title: 'Person Icon',
        pathIcon: 'assets/icons/nubank-person-icon.png'
    ),
    IconModel(
        id: 2,
        title: 'Hidden Eye Icon',
        pathIcon: 'assets/icons/nubank-hidden-eye-icon.png'
    ),
    IconModel(
        id: 3,
        title: 'Ask Icon',
        pathIcon: 'assets/icons/nubank-ask-icon.png'),
    IconModel(id: 4,
        title: 'Invite Friends',
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
  static final USER_PROFILE_HEADER =
      IconModel(
          id: 1,
          title: 'notificationIcon',
          pathIcon: 'assets/icons/nubank-notification-icon.png');

  static final USER_PROFILE_BODY =[
    IconModel(
        id: 1,
        title: 'Seguro de Vida',
        pathIcon: 'assets/icons/nubank-favorite-icon.png'),
    IconModel(
        id: 2,
        title: 'Modo Rua',
        pathIcon: 'assets/icons/nubank-street-mode-icon.png'),
    IconModel(
        id: 3,
        title: 'Configurar',
        pathIcon: 'assets/icons/nubank-config-icon.png'),
    IconModel(
        id: 4,
        title: 'Segurança',
        pathIcon: 'assets/icons/nubank-security-icon.png'),
    IconModel(
        id: 5,
        title: 'Open Fincance',
        pathIcon: 'assets/icons/nubank-open-finance-icon.png'),
    IconModel(
        id: 6,
        title: 'Documentos',
        pathIcon: 'assets/icons/nubank-documents-icon.png'),
    IconModel(
        id: 7,
        title: 'Pedir outra conta PJ',
        pathIcon: 'assets/icons/nubank-PJ-icon.png')
  ];
}


