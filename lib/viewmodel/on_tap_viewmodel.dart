import 'package:flutter/material.dart';
import 'package:nubank_copy/data/shared_on_tap_data.dart';
import 'package:nubank_copy/services/on_tap_service.dart';

class OneTapViewModel extends ChangeNotifier{
  List<OnTapModel> headerOnTap = OnTapService().getOnTapHeader();
}