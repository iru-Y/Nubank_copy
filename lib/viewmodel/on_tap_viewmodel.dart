import 'package:flutter/material.dart';
import 'package:nubank_copy/data/shared_on_tap_data.dart';

class OneTapViewModel extends ChangeNotifier{
  List<OnTapModel> headerOnTap = SharedOnTapData.onTapHeaderFunction;
}