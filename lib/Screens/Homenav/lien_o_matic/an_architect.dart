import 'package:calcu_lien/Screens/Homenav/homenav.dart';
import 'package:calcu_lien/Screens/Homenav/lien_o_matic/exceptions.dart';
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
  const An_Architect({Key? key, required this.project}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ktiledarkcolor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            pushRemove(
                context,
                HomeNav(
                  currentindex: 1,
                ));
          },
          iconSize: 16,
        ),
        title: Text(
          "Select your role",
          style: textRegular.copyWith(fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.18,
              margin: EdgeInsets.only(top: w * 0.07, left: w * 0.07),
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
                        child: ExpandableNotifier(
                          child: ScrollOnExpand(
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
                                    child: Expandable(
                                      collapsed: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount:
                                              selectedmodel["points"].length < 2
                                                  ? selectedmodel["points"]
                                                      .length
                                                  : 2,
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
                                                  child: CircleAvatar(
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
                                      expanded: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
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
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Builder(
                                      builder: (context) {
                                        var controller =
                                            ExpandableController.of(context,
                                                required: true)!;
                                        return TextButton(
                                          child: Text(
                                            controller.expanded
                                                ? "View less"
                                                : "View all",
                                            style: Theme.of(context)
                                                .textTheme
                                                .button!
                                                .copyWith(
                                                    color: ktiledarkcolor),
                                          ),
                                          onPressed: () {
                                            controller.toggle();
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: h * 0.02,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    DefaultEButton(
                                        width: w * 0.35,
                                        height: h * 0.055,
                                        text: "Check exceptions",
                                        txtcolor: kblack,
                                        radius: 4,
                                        press: () {
                                          pushTo(context, exceptions());
                                        },
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        btncolor: klightThemeClr),
                                    DefaultEButton(
                                        width: w * 0.35,
                                        height: h * 0.055,
                                        text: "Get more help",
                                        txtcolor: kblack,
                                        radius: 4,
                                        press: () {
                                          pushTo(context,
                                              HomeNav(currentindex: 4));
                                        },
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        btncolor: klightThemeClr)
                                  ],
                                )
                              ],
                            ),
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
                        child: ExpandableNotifier(
                          // controller: controller,
                          child: ScrollOnExpand(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "What to file and when",
                                  style: textfContent.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                                Expandable(
                                  controller: controller,
                                  collapsed: ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount:
                                          selectedmodel["points1"].length < 1
                                              ? selectedmodel["points1"]
                                              : 1,
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
                                              // Expandable(
                                              //   collapsed:
                                              ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
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
                                              //   expanded: ListView.builder(
                                              //     physics:
                                              //         const NeverScrollableScrollPhysics(),
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
                                              // ),
                                            ],
                                          ),
                                        );
                                      }),
                                  expanded: ListView.builder(
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
                                                    NeverScrollableScrollPhysics(),
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
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Builder(
                                      builder: (context) {
                                        // var controller =
                                        //     ExpandableController.of(context,
                                        //         required: true)!;
                                        return TextButton(
                                          child: Text(
                                            controller.expanded
                                                ? "View less"
                                                : "View more",
                                            style: Theme.of(context)
                                                .textTheme
                                                .button!
                                                .copyWith(
                                                    color: ktiledarkcolor),
                                          ),
                                          onPressed: () {
                                            controller.toggle();
                                            print(controller.expanded);
                                            print("====");
                                            setState(() {});
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    DefaultEButton(
                                        width: w * 0.35,
                                        height: h * 0.055,
                                        text: "Check exceptions",
                                        txtcolor: kblack,
                                        radius: 4,
                                        press: () {
                                          pushTo(context, exceptions());
                                        },
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        btncolor: klightThemeClr),
                                    DefaultEButton(
                                        width: w * 0.35,
                                        height: h * 0.055,
                                        text: "Get more help",
                                        txtcolor: kblack,
                                        radius: 4,
                                        press: () {
                                          pushTo(context,
                                              HomeNav(currentindex: 4));
                                        },
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        btncolor: klightThemeClr)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
