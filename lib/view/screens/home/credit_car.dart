import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/custom_syles.dart';

class CreditCar extends StatelessWidget {
  const CreditCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/icons/nubank-my-cards-icon.png',
              scale: 2.5,
              color: Colors.black,),
            const SizedBox(height: 15),
            const Text('Cartão de crédito',
                style: TextStyle(
                    fontSize: 20
                )),
            const SizedBox(height: 18),
            const Text('Peça seu cartão de crédito sem anuidade e tenha mais controle da sua vida'),
            const SizedBox(height: 18),
            TextButton(
                onPressed: (){
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => CustomStyles.NUBANK),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  fixedSize: const MaterialStatePropertyAll(Size(130, 40))
                ),
                child: const Text('Pedir Cartão', style: TextStyle(color: Colors.white))
            )
          ],
        ),

    );
  }
}
