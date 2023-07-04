import 'package:nubank_copy/data/shared_on_tap_data.dart';

class OnTapService {
    List<OnTapModel> getOnTapHeader (){
      return SharedOnTapData.onTapHeaderFunction;
    }
}