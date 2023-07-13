import 'package:flutter/material.dart';
import 'package:nubank_copy/view/screens/home/credit_car.dart';
import 'package:nubank_copy/view/screens/home/find_out_more.dart';
import 'package:nubank_copy/view/screens/home/home_header.dart';

class HomeView extends StatelessWidget {
   const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            Divider(height: 55, thickness: 2),
            CreditCar(),
            Divider(height: 55, thickness: 2),
            FindOutMore(),
          ],
        ),
      ),
    );
  }
}
