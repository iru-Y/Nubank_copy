
import 'package:flutter/cupertino.dart';

class OnTapModel extends ChangeNotifier{
  int id;
  void Function() onTap;

  OnTapModel(this.id, this.onTap);

  bool _hidden = false;

  bool get hidden => _hidden;

  void toggleHidden() {
    _hidden = !_hidden;
    print('Está funcionando');
    notifyListeners();
  }
}

class OnTapService {

  static final List<OnTapModel>onTapHeaderFunction = [
    OnTapModel(1, () {
      final service = onTapHeaderFunction[0];
      service.toggleHidden();
    }),
    OnTapModel(2, () {

    }),
    OnTapModel(3, () {}),
    OnTapModel(4, () {}),
  ];
  static final List<OnTapModel> onTapAccountFunction = [
    OnTapModel(1, (){
    }),
    OnTapModel(2, (){
    }),
    OnTapModel(3, (){
    }),
    OnTapModel(4, (){
    }),
    OnTapModel(5, (){
    }),
    OnTapModel(6, (){
    }),
    OnTapModel(7, (){
    }),
  ];
}
