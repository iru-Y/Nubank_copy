import 'package:flutter/material.dart';
import 'package:nubank_copy/data/models/icon_model.dart';
import 'package:nubank_copy/utils/custom_syles.dart';
import 'package:nubank_copy/viewmodel/icon_viewmodel.dart';
import 'package:provider/provider.dart';

class UserProfileHeaderWidget extends StatelessWidget {
  const UserProfileHeaderWidget({super.key});

  Widget container ({required Image leading, required Text text}) {
    return Container(
        width: double.infinity,
        height: 100,
        decoration: const BoxDecoration(
            color: Colors.black,
            border: Border(
                bottom: BorderSide(
                    color: CustomStyles.BOTTOM_CONTAINER_COLOR_PROFILE_USER,
                    width: 2
                )
            )
        ),
        child: Row(
            children: [
              leading,
              text,
              const Icon(Icons.arrow_back)
            ]
        )
    );
  }

  @override
  Widget build(BuildContext context) {

    final icon = Provider.of<IconViewModel>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 416,
            decoration: const BoxDecoration(
                color: CustomStyles.BACKGROUND_HEADER_USER_PROFILE
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            icon: const Icon(
                              Icons.close,
                              color: CustomStyles.PROFILE_USER_HEADER_ICONS,
                              size: 25,
                            )
                        ),
                        const SizedBox(width: 200),

                        Row(
                            children: [
                              IconButton(onPressed: (){

                              },
                                icon: Image.asset(icon.headerIcons[2].pathIcon, color: CustomStyles.PROFILE_USER_HEADER_ICONS, scale: 2.5),
                              ),
                              IconButton(onPressed: (){

                              },
                                icon: Image.asset(icon.userProfileIcons[0].pathIcon, color: CustomStyles.PROFILE_USER_HEADER_ICONS, scale: 2.5,),
                              )]),

                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: CustomStyles.NUBANK_LIGTH,
                            child: Image.asset(icon.headerIcons[0].pathIcon, scale: 2),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(49, 49, 49, 1),
                          borderRadius: BorderRadius.circular(13)
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/icons/nubank_nucoin_icon.png', scale: 1.5),
                          const SizedBox(width: 20,),
                          const Text('Nucoin', style: TextStyle(
                            color: Colors.white,
                          ),),
                          Container(
                              margin: const EdgeInsets.only(left: 160),
                              width: 50,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: CustomStyles.NUBANK,
                                  borderRadius: BorderRadius.circular(6)
                              ),
                              child:  const Center(
                                child: Text('Novo', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15
                                ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(height: 33),
                    Container(
                      width: double.infinity,
                      height: 65,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: const Center(
                        child: Text('Acessar outra conta',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            )),
                      ),
                    )
                  ],
                )
            ),
          ),
          Wrap(
            children: List.generate(iconTitleUserProfile.length,
                    (index) =>
                    container(
                      leading: Image.asset(iconTitleUserProfile[0].pathIcon),
                      text: Text(iconTitleUserProfile[0].title),

                    ))
          )
        ],
      ),
    );
  }

}
final iconTitleUserProfile =[
  IconModel(
      id: 1,
      title: 'Seguro de Vida',
      pathIcon: 'assets/icons/nubank-favorite-icon.png'),
  IconModel(
      id: 2,
      title: '',
      pathIcon: ''),
  IconModel(
      id: 3,
      title: '',
      pathIcon: ''),
  IconModel(
      id: 4,
      title: '',
      pathIcon: ''),
  IconModel(
      id: 5,
      title: '',
      pathIcon: '')
];