class OnTapService {
  int id;
  void Function() onTap;

  OnTapService({required this.id, required this.onTap});

  static final List<OnTapService> onTapHeaderFunction = [
    OnTapService(id: 1, onTap: () {
      print ('ola');
    }),
    OnTapService(id: 2, onTap: () {}),
    OnTapService(id: 3, onTap: () {}),
    OnTapService(id: 4, onTap: () {}),
  ];
  static final List<OnTapService> onTapAccountFunction = [
    OnTapService(id: 1, onTap: (){
      print('test');
    }),
    OnTapService(id: 2, onTap: (){
      print('test');
    }),
    OnTapService(id: 3, onTap: (){
      print('test');
    }),
    OnTapService(id: 4, onTap: (){
      print('test');
    }),
    OnTapService(id: 5, onTap: (){
      print('test');
    }),
    OnTapService(id: 6, onTap: (){
      print('test');
    }),
    OnTapService(id: 7, onTap: (){
      print('test');
    }),
  ];
}

