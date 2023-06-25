import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
             padding: EdgeInsets.only(bottom: 40),
            onPressed: (){},
            icon: Icon(Icons.account_balance)),
      ),
    );
  }
}
