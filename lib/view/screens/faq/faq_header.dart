import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:url_launcher/url_launcher.dart';

class FaqHeader extends StatelessWidget {
  const FaqHeader({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    void openExternalLinkLinkedin () async {
      const url = 'https://github.com/iru-Y';
      await launchUrl(Uri.parse(url));
    }

    void openExternalLinkGit () async {
      const url = 'https://github.com/iru-Y';
      await launchUrl(Uri.parse(url));
    }

    return Container(
      width: double.infinity,
      height: 250,
      decoration: const BoxDecoration(
        color: CustomStyles.NUBANK
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Platform.isIOS ? Icons.arrow_back_ios :
                  Icons.arrow_back, color: Colors.white,)
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                IconButton(
                    onPressed: openExternalLinkLinkedin,
                    icon: Image.asset('assets/images/social_media/social-media-linkedin.png',
                        color: Colors.white)),
                IconButton(
                    onPressed: openExternalLinkGit,
                    icon: Image.asset('assets/images/social_media/social-media-github.png',
                      color: Colors.white,))
              ],
            ),
          ),
          Image.asset('assets/images/social_media/social-media-zoro.png', scale: 1.5,)
        ],
      )
    );
  }
}
