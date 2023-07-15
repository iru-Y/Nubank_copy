import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/custom_syles.dart';

class ScrollableUserProfileWidget extends StatelessWidget {
  final Image leading;
  final Text text;


  const ScrollableUserProfileWidget({
    Key? key,
    required this.leading,
    required this.text
}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(
                bottom: BorderSide(
                    color: CustomStyles.CONTAINER_COLOR_PROFILE_USER,
                    width: 2
                )
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
              children: [
                leading,
                const SizedBox(width: 20),
                Container(
                    width: 170,
                    height: 100,
                    margin: const EdgeInsets.only(right: 50, top: 13),
                    child: text
                ),
                Platform.isIOS ? const Icon(
                  Icons.chevron_right, color: Colors.white,) :
                const Expanded(
                    child: Icon(
                      Icons.arrow_forward, color: Colors.white,))
              ]
          ),
        )
    );
  }

}