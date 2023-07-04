
import 'package:flutter/cupertino.dart';

class OnTapModel extends ChangeNotifier{
  int id;
  void Function() onTap;

  OnTapModel(this.id, this.onTap);

  bool hidden = false;
  void toggleHidden () {
    hidden = !hidden;
    notifyListeners();
  }
}

abstract class SharedOnTapData{

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
