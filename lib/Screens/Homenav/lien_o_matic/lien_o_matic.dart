import 'package:calcu_lien/Screens/Homenav/lien_o_matic/an_architect.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/projects.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:flutter/material.dart';

class Lien_o_matic extends StatefulWidget {
  const Lien_o_matic({Key? key}) : super(key: key);

  @override
  State<Lien_o_matic> createState() => _Lien_o_maticState();
}

class _Lien_o_maticState extends State<Lien_o_matic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: h * 0.2,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: ktiledarkcolor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Image.asset(
                Lien_O_Matic_logo,
                height: 86,
                width: 176.74,
                color: kwhite,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: w * 0.03,
                right: w * 0.03,
                top: w * 0.03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Select your type of project",
                      style: textScroll,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.55,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: staticData.length,
                        itemBuilder: (BuildContext context, index) {
                          return Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: w * 0.03, bottom: w * 0.03),
                                child: SizedBox(
                                  height: h * 0.09,
                                  width: double.infinity,
                                  child: GestureDetector(
                                    onTap: () {
                                      PushTo(
                                          context,
                                          An_Architect(
                                            project: staticData[index]["obj"],
                                          ));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Padding(
                                          padding: EdgeInsets.all(16),
                                          child: Text(
                                            staticData
                                                .elementAt(index)['heading']
                                                .toString(),
                                            style:
                                                textbold.copyWith(fontSize: 15),
                                          )

                                          // child: Text(
                                          //   "Florida Private Bonded & Nonbonded Projects",
                                          //   textAlign: TextAlign.start,
                                          // ),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     PushTo(context, An_Architect());
                  //   },
                  //   child: SizedBox(
                  //     height: h * 0.09,
                  //     width: double.infinity,
                  //     child: Card(
                  //       elevation: 4,
                  //       child: Padding(
                  //         padding: EdgeInsets.all(16),
                  //         child: Text(
                  //           "Florida State/Municipal Projects",
                  //           style: textbold.copyWith(fontSize: 15),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(bottom: w * 0.03, top: w * 0.03),
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       PushTo(context, An_Architect());
                  //     },
                  //     child: SizedBox(
                  //       height: h * 0.09,
                  //       width: double.infinity,
                  //       child: Card(
                  //         elevation: 4,
                  //         child: Padding(
                  //           padding: EdgeInsets.all(16),
                  //           child: Text(
                  //             "Florida Department of Transportatiion Projects",
                  //             style: textbold.copyWith(fontSize: 15),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // GestureDetector(
                  //   onTap: () {
                  //     PushTo(context, const An_Architect());
                  //   },
                  //   child: SizedBox(
                  //     height: h * 0.09,
                  //     width: double.infinity,
                  //     child: Card(
                  //       elevation: 4,
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(16),
                  //         child: Text(
                  //           "Florida Miller act Projects",
                  //           style: textbold.copyWith(fontSize: 15),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
