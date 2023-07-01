class OnTapHeaderService {
  int id;
  void Function() onTap;

  OnTapHeaderService({required this.id, required this.onTap});

  static final List<OnTapHeaderService> onTapFunction = [
    OnTapHeaderService(id: 1, onTap: () {
      print ('ola');
    }),
    OnTapHeaderService(id: 2, onTap: () {}),
    OnTapHeaderService(id: 3, onTap: () {}),
    OnTapHeaderService(id: 4, onTap: () {}),
  ];
}

