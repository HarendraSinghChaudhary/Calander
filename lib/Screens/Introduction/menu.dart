import 'package:calcu_lien/Screens/Homenav/calc_u_lien/calc_u_lien.dart';
import 'package:calcu_lien/Screens/Homenav/Help/help.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../Homenav/homenav.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Color.fromARGB(255, 255, 255, 255),
      //   systemOverlayStyle: SystemUiOverlayStyle(
      //       // systemNavigationBarColor: Colors.white, // Navigation bar
      //       //statusBarColor: Color.fromARGB(255, 255, 255, 255),
      //       ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              pushTo(
                  context,
                  HomeNav(
                    currentindex: 0,
                  ));
            },
            child: Container(
              width: double.infinity,
              height: h * 0.15,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(Calc_u_Lien_logo))),
            ),
          ),
          const Divider(
            height: 2,
            color: dividerClr,
          ),
          GestureDetector(
            onTap: () {
              pushTo(
                  context,
                  HomeNav(
                    currentindex: 1,
                  ));
            },
            child: Container(
                width: double.infinity,
                height: Get.height * 0.15,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(Lien_O_Matic_logo)))),
          ),
          const Divider(
            height: 2,
            color: dividerClr,
          ),
          GestureDetector(
            onTap: () {
              pushTo(
                  context,
                  HomeNav(
                    currentindex: 2,
                  ));
            },
            child: Container(
                width: double.infinity,
                height: h * 0.15,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(ContractDetective)))),
          ),
          const Divider(
            height: 2,
            color: dividerClr,
          ),
          GestureDetector(
            onTap: () {
              pushTo(
                  context,
                  HomeNav(
                    currentindex: 3,
                  ));
            },
            child: Container(
              width: double.infinity,
              height: h * 0.15,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(SplashImage))),
              alignment: Alignment.center,
            ),
          ),
          const Divider(
            height: 2,
            color: dividerClr,
          ),
          GestureDetector(
            onTap: () {
              pushTo(
                  context,
                  HomeNav(
                    currentindex: 4,
                  ));
            },
            child: Container(
                width: double.infinity,
                height: h * 0.1,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(material_help_outline)))),
          ),
          const Divider(
            height: 2,
            color: dividerClr,
          ),
        ],
      ),
    );
  }
}
