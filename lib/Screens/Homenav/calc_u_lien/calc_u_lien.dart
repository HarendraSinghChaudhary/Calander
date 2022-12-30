import 'dart:math';

import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Calc_u_Lien extends StatefulWidget {
  const Calc_u_Lien({Key? key}) : super(key: key);

  @override
  State<Calc_u_Lien> createState() => _Calc_u_LienState();
}

class _Calc_u_LienState extends State<Calc_u_Lien> {
  //Rotation angle of the wheels
  double _angle = 0.0;
  double _oldAngle = 0.0;
  double _angleDelta = 0.0;

  //Rotation angle value difference for 45 days
  double for45Days = 10.19;

  //Rotation angle value difference for 90 days
  double for90Days = 10.96;

  //Rotation angle value
  double daysFilter = 10.19;

  //Static reference  start date
  var staticdate = DateTime(2022, 07, 29);

  //Static reference  end date
  var staticEnddate = DateTime(2022, 09, 12);

  //start date on date selection
  var startdate = DateTime(2022, 07, 29);

  //end date on date selection
  var endDate = DateTime(2022, 09, 12);

  //drop down selected value
  String dropdownValue = "Florida Notice to Owner (45 Days)";

  int date = 0;
  int temValue = 0;
  int daysDifference = 45;
  var year = 2022;

  DateTime selectedDate = DateTime(2022, 07, 29);

  var Notice = [
    'Florida Notice to Owner (45 Days)',
    'Florida Claim of Lien (90 Days)',
    'Florida Bond Claim (90 Days)'
  ];

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    String _joningdate = DateFormat.yMd().format(startdate);
    String _enddate = DateFormat.yMd().format(endDate);

    String _joiningDayName = DateFormat('EEEE').format(startdate).toString();
    String _endDayName = DateFormat('EEEE').format(endDate).toString();

    return Scaffold(
        body: Stack(
          children: [
            leftWheel(),
            rightWheel(),
            leftArrow(),
            rightArrow(),
            // Center(
            //     child: Text(
            //   dropdownValue,
            //   style: textScroll,
            // )),
            Column(
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
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: w * 0.05),
                      child: Image.asset(
                        Calc_u_Lien_logo,
                        height: h * 0.5,
                        width: w * 0.5,
                        color: kwhite,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.03, right: w * 0.03, top: w * 0.03),
                  child: Card(
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: DropdownButton<String>(
                        isExpanded: true,

                        value: dropdownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue ?? "";
                            if (dropdownValue ==
                                "Florida Notice to Owner (45 Days)") {
                              daysFilter = for45Days;
                              daysDifference = 45;
                              staticEnddate = DateTime(2022, 09, 12);
                            } else {
                              daysFilter = for90Days;
                              daysDifference = 90;
                              staticEnddate = DateTime(2022, 10, 27);
                            }
                            endDate =
                                startdate.add(Duration(days: daysDifference));
                          });
                        },
                        items: Notice.map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value, style: textbold),
                                )).toList(),

                        // add extra sugar..
                        icon: const Icon(
                          Icons.arrow_drop_down,
                          color: kblack,
                        ),
                        iconSize: 42,
                        underline: const SizedBox(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: w * 0.03,
                      right: w * 0.03,
                      top: w * 0.01,
                      bottom: w * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          List<String> dateArray = [];
                          dateArray = _joningdate.split("/");
                          String month = dateArray[0];
                          String day = dateArray[1];
                          String year = dateArray[2];
                          selectedDate = DateTime(int.parse(year),
                              int.parse(month), int.parse(day));
                          _selectDate("startDate", context);
                        },
                        child: Column(
                          children: [
                            Text(
                              dropdownValue ==
                                      "Florida Notice to Owner (45 Days)"
                                  ? "First Work"
                                  : "Last Work",
                              style: textScroll,
                            ),
                            SizedBox(
                              // height: h * 0.085,
                              // width: w * 0.45,
                              child: Card(
                                elevation: 3,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: w * 0.01,
                                      bottom: w * 0.01,
                                      left: w * 0.06,
                                      right: w * 0.06),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.calendar_month_sharp,
                                          color: ktiledarkcolor),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: w * 0.024),
                                        child: Column(
                                          children: [
                                            Text(
                                              _joningdate,
                                              style: textbold.copyWith(
                                                  color: ktiledarkcolor),
                                            ),
                                            Text(
                                              _joiningDayName,
                                              style: textbold.copyWith(
                                                  color: ktiledarkcolor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // const SizedBox(
                      //   width: 13,
                      // ),
                      Column(
                        children: [
                          const Text(
                            "Deadline",
                            style: textScroll,
                          ),
                          InkWell(
                            onTap: () {
                              print(
                                  MediaQuery.of(context).size.height / 2.7762);
                              List<String> dateArray = [];
                              dateArray = _enddate.split("/");
                              String month = dateArray[0];
                              String day = dateArray[1];
                              String year = dateArray[2];
                              selectedDate = DateTime(int.parse(year),
                                  int.parse(month), int.parse(day));
                              print("_enddate  $_enddate");
                              //  _selectDate("startDate", context);
                            },
                            child: Card(
                              elevation: 3,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: w * 0.01,
                                    bottom: w * 0.01,
                                    left: w * 0.06,
                                    right: w * 0.06),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.calendar_month_sharp,
                                        color: ktiledarkcolor),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: w * 0.024),
                                      child: Column(
                                        children: [
                                          Text(
                                            _enddate,
                                            style: textbold.copyWith(
                                                color: ktiledarkcolor),
                                          ),
                                          Text(
                                            _endDayName,
                                            style: textbold.copyWith(
                                                color: ktiledarkcolor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: ktiledarkcolor,
        //   onPressed: () {
        //     replaceRoute(context, HomeNav(currentindex: 4));
        //   },
        //   child: const Icon(
        //     Icons.question_mark,
        //   ),
        // ),

        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(bottom: w * 0.03, right: w * 0.03),
          child: defRow(context),
        ));
  }

  Widget leftArrow() {
    return Positioned(
      top: (MediaQuery.of(context).size.height / 2.411) * 1.451428571428571,
      left: (MediaQuery.of(context).size.height / 2.7762) * 0.038894736842106,
      child: SizedBox(
        width: (MediaQuery.of(context).size.height / 2) * 0.238095238095238,
        height: (MediaQuery.of(context).size.height / 2) * 0.238095238095238,
        child: const Icon(
          Icons.arrow_forward,
          size: 50,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget rightArrow() {
    return Positioned(
      top: (MediaQuery.of(context).size.height / 2.411) * 1.462,
      right: (MediaQuery.of(context).size.height / 2.7762) * 0.038894736842106,
      child: SizedBox(
        width: (MediaQuery.of(context).size.height / 2) * 0.238095238095238,
        height: (MediaQuery.of(context).size.height / 2) * 0.238095238095238,
        child: const Icon(
          Icons.arrow_back,
          size: 50,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget leftWheel() {
    return Positioned(
      top: (MediaQuery.of(context).size.height / 2.411),
      left: -(MediaQuery.of(context).size.height / 2.7762),
      child: Transform.rotate(
        angle: _angle,
        child: Container(
          width: MediaQuery.of(context).size.height / 2,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            color: Colors.white,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(150),
            image: const DecorationImage(
              image: AssetImage("assets/pngIcons/image.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              Offset centerOfGestureDetector =
                  Offset(constraints.maxWidth / 2, 130);
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onPanStart: (details) {
                  final touchPositionFromCenter =
                      details.localPosition - centerOfGestureDetector;
                  _angleDelta = _oldAngle - touchPositionFromCenter.direction;
                },
                onPanEnd: (details) {
                  setState(
                    () {
                      _oldAngle = _angle;
                    },
                  );
                },
                onPanUpdate: (details) {
                  final touchPositionFromCenter =
                      details.localPosition - centerOfGestureDetector;

                  setState(
                    () {
                      _angle = touchPositionFromCenter.direction + _angleDelta;
                    },
                  );

                  var value = _angle * (180 / pi);

                  setState(() {
                    var valueAnngle = value / 0.986301369863014;

                    startdate = DateTime(staticdate.year, staticdate.month,
                        staticdate.day - valueAnngle.toInt());

                    endDate = DateTime(staticEnddate.year, staticEnddate.month,
                        staticEnddate.day - valueAnngle.toInt() - 1);

                    if (dropdownValue != "Florida Notice to Owner (45 Days)") {
                      endDate = DateTime(
                          endDate.year, endDate.month, endDate.day - 2);
                    } else {
                      endDate = DateTime(
                          endDate.year, endDate.month, endDate.day + 2);
                    }
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget rightWheel() {
    return Positioned(
      top: (MediaQuery.of(context).size.height / 2.411),
      right: -(MediaQuery.of(context).size.height / 2.7762),
      child: Transform.rotate(
        angle: _angle - daysFilter,
        child: Container(
          width: MediaQuery.of(context).size.height / 2,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            color: Colors.white,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(150),
            image: const DecorationImage(
              image: AssetImage("assets/pngIcons/image.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              Offset centerOfGestureDetector =
                  Offset(constraints.maxWidth / 2, 130);
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onPanStart: (details) {
                  final touchPositionFromCenter =
                      details.localPosition - centerOfGestureDetector;
                  _angleDelta = _oldAngle - touchPositionFromCenter.direction;
                },
                onPanEnd: (details) {
                  setState(
                    () {
                      _oldAngle = _angle;
                    },
                  );
                },
                onPanUpdate: (details) {
                  final touchPositionFromCenter =
                      details.localPosition - centerOfGestureDetector;

                  setState(
                    () {
                      _angle = touchPositionFromCenter.direction + _angleDelta;
                    },
                  );

                  var value = _angle * (180 / pi);

                  setState(() {
                    var valueAnngle = value / 0.986301369863014;

                    _oldAngle = _angle;
                    startdate = DateTime(staticdate.year, staticdate.month,
                        staticdate.day - valueAnngle.toInt());

                    if (dropdownValue == "Florida Notice to Owner (45 Days)") {
                      endDate = DateTime(
                          startdate.year, startdate.month, startdate.day + 45);
                    } else {
                      endDate = DateTime(
                          startdate.year, startdate.month, startdate.day + 90);
                    }
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(String type, BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        if (type == "startDate") {
          var diff = staticdate.difference(picked).inDays * 0.978260869565217;
          var angle = diff * (pi / 180);
          if (angle > 0) {
            angle = angle + 0.049;
          }
          _angle = angle;
          startdate = selectedDate;
          endDate = startdate.add(Duration(days: daysDifference));
        } else {
          var diff =
              staticEnddate.difference(picked).inDays * 0.983606557377049;
          var angle = diff * (pi / 180);
          if (angle > 0) {
            angle = angle;
          }

          _angle = angle;
          _oldAngle = _angle;
          endDate = selectedDate;
          startdate = endDate.subtract(Duration(days: daysDifference));
        }
      });
    }
  }
}
