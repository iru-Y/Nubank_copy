import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/view/screens/faq/faq_header.dart';

import 'faq_body.dart';

class FAQView extends StatefulWidget {
  const FAQView({Key? key}) : super(key: key);

  @override
  State<FAQView> createState() => _FAQViewState();
}

class _FAQViewState extends State<FAQView> {

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          backgroundColor: CustomStyles.CONTAINER_COLOR_PROFILE_USER,
            body: Column(
              children: [
                FaqHeader(),
                FaqBody()
              ],
            )
        ));
  }
}