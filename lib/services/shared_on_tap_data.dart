class OnTapModel{
  int id;
  void Function() onTap;

  OnTapModel(this.id, this.onTap);

}

class OnTapService{

  static final List<OnTapModel>onTapHeaderFunction = [
    OnTapModel(1, () {

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
