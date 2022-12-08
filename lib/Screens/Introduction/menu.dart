import 'package:calcu_lien/Screens/Homenav/Podcast/podcast.dart';
import 'package:calcu_lien/Screens/Homenav/calc_u_lien/calc_u_lien.dart';
import 'package:calcu_lien/Screens/Homenav/Help/help.dart';
import 'package:calcu_lien/Screens/Homenav/contract_detective/contract_detective.dart';
import 'package:calcu_lien/Screens/Homenav/lien_o_matic/lien_o_matic.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../Homenav/homenav.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {


Future launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }




  @override
  Widget build(BuildContext context) {

     final Uri toLaunch =
        Uri(scheme: 'https', path: 'www.thelienzonepodcast.com',);
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
 ));
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
              const Calc_u_Lien());
            },
            child: Center(
              child: Container(
                width: double.infinity,
                height: h * 0.15,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(Calc_u_Lien_logo))),
              ),
            ),
          ),
          // const Divider(
          //   height: 2,
          //   color: dividerClr,
          // ),
          GestureDetector(
            onTap: () {
              pushTo(
                  context,
                 const LienOMatic());
            },
            child: Center(
              child: Container(
                  width: double.infinity,
                  height: Get.height * 0.15,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(Lien_O_Matic_logo)))),
            ),
          ),
          // const Divider(
          //   height: 2,
          //   color: dividerClr,
          // ),
          GestureDetector(
            onTap: () {
              pushTo(
                  context,
                 const Contract_Detective());},
            child: Center(
              child: Container(
                  width: double.infinity,
                  height: h * 0.125,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(ContractDetective)))),
            ),
          ),
          // const Divider(
          //   height: 2,
          //   color: dividerClr,
          // ),
          GestureDetector(
            onTap: () {
              setState(() {
                launchInBrowser(toLaunch);
              });
            },
            child: Center(
              child: Container(
                width: double.infinity,
                height: h * 0.18,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(podcastImage))),
                alignment: Alignment.center,
              ),
            ),
          ),
          // const Divider(
          //   height: 2,
          //   color: dividerClr,
          // ),
          GestureDetector(
            onTap: () {
              pushTo(
                  context,
                const  Help());
            },
            child: Center(
              child: Container(
                  width: double.infinity,
                  height: h * 0.095,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(material_help_outline),))),
            ),
          ),
          // const Divider(
          //   height: 2,
          //   color: dividerClr,
          // ),
        ],
      ),
    );
  }


}
