import 'package:flutter/material.dart';
import 'package:nubank_copy/view/screens/home/widgets/credit_car_widget.dart';
import 'package:nubank_copy/view/screens/home/widgets/find_out_more_widget.dart';
import 'package:nubank_copy/view/screens/home/widgets/home_header_widget.dart';

class HomeView extends StatelessWidget {
   const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderWidget(),
            Divider(height: 55, thickness: 2),
            CreditCarWidget(),
            Divider(height: 55, thickness: 2),
            FindOutMoreWidget(),
          ],
        ),
      ),
    );
  }
}
