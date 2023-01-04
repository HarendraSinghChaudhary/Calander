import 'package:calcu_lien/Screens/Homenav/homenav.dart';
import 'package:calcu_lien/Screens/Homenav/lien_o_matic/exceptions.dart';
import 'package:calcu_lien/Screens/Homenav/lien_o_matic/lien_o_matic.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/projects.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:calcu_lien/Screens/Homenav/lien_o_matic/viewbtn.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable/expandable.dart';

class An_Architect extends StatefulWidget {
  final project;
  var title;
   An_Architect({Key? key, required this.project,required this.title}) : super(key: key);

  @override
  State<An_Architect> createState() => _An_ArchitectState();
}

class _An_ArchitectState extends State<An_Architect> {
  var selectedmodel;
  int selectedindex = 0;

 
  ExpandableController controller = ExpandableController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    selectedmodel = widget.project[0];
  }

  @override
  Widget build(BuildContext context) {
      var  h = MediaQuery.of(context).size.height;
   var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ktiledarkcolor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            pushRemove(
                context,
              const LienOMatic());
          },
          iconSize: 16,
        ),
        title: Text(
          widget.title,
          style: textRegular.copyWith(fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding:  EdgeInsets.only(left: w * 0.07,top: w * 0.02),
            child: Text(
        "I am the... (select your role)",
        style: textRegular.copyWith(fontWeight: FontWeight.bold,color: kblack),
      ),
          ),
          Container(
            height: h * 0.18,
            margin: EdgeInsets.only(top: w * 0.03, left: w * 0.07),
            child: ListView.builder(
                itemCount: widget.project.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                        selectedmodel = widget.project[index];
                      });

                      // print(selectedmodel.toString());
                    },
                    child: SizedBox(
                      width: w * 0.7,
                      child: Card(
                        color:
                            selectedindex == index ? ktiledarkcolor : kwhite,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  widget.project
                                      .elementAt(index)["name"]
                                      .toString(),
                                  style: textScroll.copyWith(
                                      color: selectedindex == index
                                          ? kwhite
                                          : kblack)),
                              // styleText('An Architect', Colors.black,
                              //     FontWeight.w500, 18),
                              SizedBox(
                                height: w * 0.01,
                              ),
                              Text(
                                widget.project
                                    .elementAt(index)["namedes"]
                                    .toString(),
                                style: textbold.copyWith(
                                    fontWeight: FontWeight.w300,
                                    color: selectedindex == index
                                        ? kwhite
                                        : kblack),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  selectedmodel["points"].isNotEmpty
                ? Padding(
                    padding: EdgeInsets.only(
                        left: w * 0.07, right: w * 0.07, top: w * 0.07),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "What to file and when",
                                style: textfContent.copyWith(
                                    fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: SizedBox(
                                  // height: h * 0.3,
                                  child:  ListView.builder(
                                        shrinkWrap: true,
                                        physics:
                                            BouncingScrollPhysics(),
                                        itemCount:
                                            selectedmodel["points"].length,
                                        scrollDirection: Axis.vertical,
                                        itemBuilder: (BuildContext context,
                                            int index) {
                                          return Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: w * 0.02,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.all(8),
                                                child: const CircleAvatar(
                                                  backgroundColor: kblack,
                                                  radius: 3,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 9,
                                                child: Text(
                                                  selectedmodel["points"]
                                                      [index],
                                                  style: textGrey.copyWith(
                                                      color: kblack),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                  ),
                                ),
                             
                              Padding(
                                padding:  EdgeInsets.only(top:h * 0.02),
                                child: DefaultEButton(
                                    width: double.infinity,
                                    height: h * 0.055,
                                    text: "Check exceptions",
                                    txtcolor: kblack,
                                    radius: 4,
                                    press: () {
                                      pushTo(context, exceptions());
                                    },
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    btncolor: klightThemeClr),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(
                        left: w * 0.07, right: w * 0.07, top: w * 0.07),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "What to file and when",
                                style: textfContent.copyWith(
                                    fontWeight: FontWeight.w600),
                              ),
                           
                               ListView.builder(
                                    shrinkWrap: true,
                                   
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount:
                                        selectedmodel["points1"].length,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            top: w * 0.02,
                                            left: w * 0.040,
                                            right: w * 0.012),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              selectedmodel["points1"][index]
                                                      ["subheading"]
                                                  .toString(),
                                              style: textGrey.copyWith(
                                                  color: kblack,
                                                  fontWeight:
                                                      FontWeight.w600),
                                            ),
                                            ListView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount:
                                                  selectedmodel["points1"]
                                                          [index]["subpoints"]
                                                      .length,
                                              itemBuilder:
                                                  (context, int innerIndex) {
                                                return Padding(
                                                  padding: EdgeInsets.only(
                                                      left: w * 0.03),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: w * 0.02,
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.all(8),
                                                        child: CircleAvatar(
                                                          backgroundColor:
                                                              kblack,
                                                          radius: 3,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 9,
                                                        child: Text(
                                                          selectedmodel["points1"]
                                                                          [
                                                                          index]
                                                                      [
                                                                      "subpoints"]
                                                                  [innerIndex]
                                                              .toString(),
                                                          style: textGrey
                                                              .copyWith(
                                                                  color:
                                                                      kblack),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                            // Expandable(
                                            //   collapsed: ListView.builder(
                                            //     physics:
                                            //         NeverScrollableScrollPhysics(),
                                            //     shrinkWrap: true,
                                            //     scrollDirection:
                                            //         Axis.vertical,
                                            //     itemCount:
                                            //         selectedmodel["points1"]
                                            //                     [index]
                                            //                 ["subpoints"]
                                            //             .length,
                                            //     itemBuilder: (context,
                                            //         int innerIndex) {
                                            //       return Padding(
                                            //         padding: EdgeInsets.only(
                                            //             left: w * 0.03),
                                            //         child: Row(
                                            //           crossAxisAlignment:
                                            //               CrossAxisAlignment
                                            //                   .start,
                                            //           children: [
                                            //             SizedBox(
                                            //               width: w * 0.02,
                                            //             ),
                                            //             Padding(
                                            //               padding:
                                            //                   EdgeInsets.all(
                                            //                       8),
                                            //               child:
                                            //                   const CircleAvatar(
                                            //                 backgroundColor:
                                            //                     kblack,
                                            //                 radius: 3,
                                            //               ),
                                            //             ),
                                            //             Expanded(
                                            //               flex: 9,
                                            //               child: Text(
                                            //                 selectedmodel["points1"]
                                            //                                 [
                                            //                                 index]
                                            //                             [
                                            //                             "subpoints"]
                                            //                         [
                                            //                         innerIndex]
                                            //                     .toString(),
                                            //                 style: textGrey
                                            //                     .copyWith(
                                            //                         color:
                                            //                             kblack),
                                            //               ),
                                            //             ),
                                            //           ],
                                            //         ),
                                            //       );
                                            //     },
                                            //   ),
                                            //   expanded: ListView.builder(
                                            //     physics:
                                            //         NeverScrollableScrollPhysics(),
                                            //     shrinkWrap: true,
                                            //     scrollDirection:
                                            //         Axis.vertical,
                                            //     itemCount: selectedmodel[
                                            //                             "points1"]
                                            //                         [index]
                                            //                     ["subpoints"]
                                            //                 .length <
                                            //             2
                                            //         ? selectedmodel["points1"]
                                            //                     [index]
                                            //                 ["subpoints"]
                                            //             .length
                                            //         : 2,
                                            //     itemBuilder: (context,
                                            //         int innerIndex) {
                                            //       return Padding(
                                            //         padding: EdgeInsets.only(
                                            //             left: w * 0.03),
                                            //         child: Row(
                                            //           crossAxisAlignment:
                                            //               CrossAxisAlignment
                                            //                   .start,
                                            //           children: [
                                            //             SizedBox(
                                            //               width: w * 0.02,
                                            //             ),
                                            //             Padding(
                                            //               padding:
                                            //                   EdgeInsets.all(
                                            //                       8),
                                            //               child:
                                            //                   const CircleAvatar(
                                            //                 backgroundColor:
                                            //                     kblack,
                                            //                 radius: 3,
                                            //               ),
                                            //             ),
                                            //             Expanded(
                                            //               flex: 9,
                                            //               child: Text(
                                            //                 selectedmodel["points1"]
                                            //                                 [
                                            //                                 index]
                                            //                             [
                                            //                             "subpoints"]
                                            //                         [
                                            //                         innerIndex]
                                            //                     .toString(),
                                            //                 style: textGrey
                                            //                     .copyWith(
                                            //                         color:
                                            //                             kblack),
                                            //               ),
                                            //             ),
                                            //           ],
                                            //         ),
                                            //       );
                                            //     },
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      );
                                    }),
                            
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.end,
                              //   children: <Widget>[
                              //     Builder(
                              //       builder: (context) {
                              //         // var controller =
                              //         //     ExpandableController.of(context,
                              //         //         required: true)!;
                              //         return TextButton(
                              //           child: Text(
                              //             controller.expanded
                              //                 ? "View less"
                              //                 : "View more",
                              //             style: Theme.of(context)
                              //                 .textTheme
                              //                 .button!
                              //                 .copyWith(
                              //                     color: ktiledarkcolor),
                              //           ),
                              //           onPressed: () {
                              //             controller.toggle();
                              //             print(controller.expanded);
                              //             print("====");
                              //             setState(() {});
                              //           },
                              //         );
                              //       },
                              //     ),
                              //   ],
                              // ),
                              Padding(
                                padding:  EdgeInsets.only(top:h * 0.02),
                                child: DefaultEButton(
                                    width: double.infinity,
                                    height: h * 0.055,
                                    text: "Check exceptions",
                                    txtcolor: kblack,
                                    radius: 4,
                                    press: () {
                                      pushTo(context, exceptions());
                                    },
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    btncolor: klightThemeClr),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
            
                ],
              ),
            )
          )
                  ],
      ),
    );
  }
}
