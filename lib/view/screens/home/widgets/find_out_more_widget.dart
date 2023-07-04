import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/custom_syles.dart';

class FindOutMoreWidget extends StatelessWidget {
  const FindOutMoreWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descubra mais',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List<Widget>.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const SizedBox(height: 20),
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.asset(
                                'assets/images/nubank-news-image.png',
                                width: 220,
                                height: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              width: 220,
                              height: 140,
                              decoration: const BoxDecoration(
                                color: CustomStyles.BACKGROUND_BODY_ICON,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Portabilidade de salário',
                                      style: TextStyle(fontWeight: FontWeight.w700),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Sua liberdade começa com você escolhendo...',
                                      style: TextStyle(
                                        color: CustomStyles.NUBANK_FIND_OUT_MORE,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    TextButton(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateColor.resolveWith((states) => CustomStyles.NUBANK),
                                          shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30),
                                            )
                                          ),
                                          fixedSize: const MaterialStatePropertyAll(
                                            Size(100, 40)
                                          )
                                        ),
                                        onPressed: (){},
                                        child: const Text('Conhecer', style: TextStyle(color: Colors.white))
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
