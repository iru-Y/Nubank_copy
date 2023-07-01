import 'package:flutter/material.dart';

import '../../widgets/header_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 150,
          title: const HeaderWidget()
      ),
    );
  }
}
