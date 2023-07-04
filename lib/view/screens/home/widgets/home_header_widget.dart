import 'package:flutter/material.dart';
import 'package:nubank_copy/data/shared_on_tap_data.dart';
import 'package:nubank_copy/utils/app_route.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/viewmodel/icon_viewmodel.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final icon = IconViewModel().headerIcons;
    final gesture = SharedOnTapData.onTapHeaderFunction;

    return Container(
      padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
          bottom: 20
      ),
      decoration: const BoxDecoration(
          color: CustomStyles.NUBANK
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: ()=> Navigator.pushNamed(context,
                      AppRoute.USER_PROFILE
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: CustomStyles.NUBANK_LIGTH,
                    child: Image.asset(icon[0].pathIcon, scale: 2),
                  ),
                ),
              ),
              Wrap(
                spacing: 20,
                runSpacing: 10,
                children: List<Widget>.generate(icon.length - 1, (index) {
                  final ic = icon[index + 1];
                  final onTap = gesture[index].onTap;
                  return GestureDetector(
                    onTap: onTap,
                    child: Image.asset(ic.pathIcon, scale: 2.5),
                  );
                }),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Text('Olá, yuri',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                )),
          ),
        ],
      ),
    );
  }
}
