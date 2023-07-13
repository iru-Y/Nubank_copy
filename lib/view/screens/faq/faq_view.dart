import 'package:flutter/material.dart';

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
            body: FaqBody()
        ));
  }
}