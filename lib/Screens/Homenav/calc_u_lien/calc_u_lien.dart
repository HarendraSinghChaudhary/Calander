import 'dart:math';

import 'package:calcu_lien/Screens/Homenav/Help/help.dart';
import 'package:calcu_lien/Screens/Homenav/homenav.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  int daysDifference = 45;
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
                              _selectDate("startDate", context);
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
    return const Positioned(
      top: 469,
      left: 10,
      child: SizedBox(
        width: 100,
        height: 100,
        child: Icon(
          Icons.arrow_forward,
          size: 50,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget rightArrow() {
    return const Positioned(
      top: 466,
      right: 10,
      child: SizedBox(
        width: 100,
        height: 100,
        child: Icon(
          Icons.arrow_back,
          size: 50,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget leftWheel() {
    return Positioned(
      top: 307,
      left: -304,
      child: Transform.rotate(
        angle: _angle,
        child: Container(
          width: 420,
          height: 420,
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

                  var angleValue = value.toInt();

                  if (value < 0) {
                    setState(() {
                      var valueAnngle = value / 0.978260869565217;

                      _oldAngle = _angle;
                      startdate = DateTime(staticdate.year, staticdate.month,
                          staticdate.day + valueAnngle.toInt().abs() + 1);
                      endDate = DateTime(
                          staticEnddate.year,
                          staticEnddate.month,
                          staticEnddate.day + valueAnngle.toInt().abs() - 1);
                      if (dropdownValue !=
                          "Florida Notice to Owner (45 Days)") {
                        endDate = DateTime(
                            endDate.year, endDate.month, endDate.day + 2);
                      } else {
                        endDate = DateTime(
                            endDate.year, endDate.month, endDate.day + 2);
                      }
                    });
                  } else {
                    setState(() {
                      var valueAnngle = value / 0.989010989019999;
                     
                      if (value > 43) {
                        startdate = DateTime(staticdate.year, staticdate.month,
                            staticdate.day - valueAnngle.toInt() + 2);
                      } else {
                        startdate = DateTime(staticdate.year, staticdate.month,
                            staticdate.day - valueAnngle.toInt() + 1);
                      }

                      endDate = DateTime(
                          staticEnddate.year,
                          staticEnddate.month,
                          staticEnddate.day - valueAnngle.toInt() - 1);

                      if (dropdownValue !=
                          "Florida Notice to Owner (45 Days)") {
                        endDate = DateTime(
                            endDate.year, endDate.month, endDate.day - 2);
                      } else {
                        endDate = DateTime(
                            endDate.year, endDate.month, endDate.day + 2);
                      }
                    });
                  }
                  setState(() {
                    if (angleValue > 360) {
                      _angle = 0;
                    }
                  });

                  setState(() {
                    if (angleValue < -360) {
                      _angle = 0;
                    }
                  });
                  setState(() {
                    //15 OCT
                    if (angleValue == -75) {
                      startdate = DateTime(staticdate.year, 10, 15);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //29 OCT
                    if (angleValue == -91) {
                      startdate = DateTime(staticdate.year, 10, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //15 NOV
                    if (angleValue == -105) {
                      startdate = DateTime(staticdate.year, 11, 15);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //30 NOV
                    if (angleValue == -120) {
                      startdate = DateTime(staticdate.year, 11, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //15 DEC
                    if (angleValue == -134) {
                      startdate = DateTime(staticdate.year, 12, 15);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //31 DEC
                    if (angleValue == -150) {
                      startdate = DateTime(staticdate.year, 12, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //15 JAN
                    if (angleValue == 195) {
                      startdate = DateTime(staticdate.year, 01, 15);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //31 JAN
                    if (angleValue == 179) {
                      startdate = DateTime(staticdate.year, 01, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //15 FEB
                    if (angleValue == -194) {
                      startdate = DateTime(staticdate.year, 02, 15);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //28 FEB
                    if (angleValue == -207) {
                      startdate = DateTime(staticdate.year, 02, 28);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //15 MARCH
                    if (angleValue == 137) {
                      startdate = DateTime(staticdate.year, 03, 15);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //31 MARCH
                    if (angleValue == 122) {
                      startdate = DateTime(staticdate.year, 03, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //15 April
                    if (angleValue == 107) {
                      startdate = DateTime(staticdate.year, 04, 15);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //30 APRIL
                    if (angleValue == 92) {
                      startdate = DateTime(staticdate.year, 04, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //15 MAY
                    if (angleValue == 76) {
                      startdate = DateTime(staticdate.year, 05, 15);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //31 MAY
                    if (angleValue == 60) {
                      startdate = DateTime(staticdate.year, 05, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //15 JUNE
                    if (angleValue == 45) {
                      startdate = DateTime(staticdate.year, 06, 15);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //30 JUNE
                    if (angleValue == 30 ||
                        angleValue == 390 ||
                        angleValue == 750) {
                      startdate = DateTime(staticdate.year, 06, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //31 JULY
                    if (angleValue == 360 ||
                        angleValue == 0 ||
                        angleValue == 720) {
                      startdate = DateTime(staticdate.year, 07, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    }
                    //31 AUGUST
                    if (angleValue == -31 ||
                        angleValue == -361 ||
                        angleValue == -751) {
                      startdate = DateTime(staticdate.year, 08, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //30 SEPT
                    if (angleValue == -61) {
                      startdate = DateTime(staticdate.year, 09, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    }

                    if (startdate == DateTime(startdate.year, 07, 29)) {
                      _angle = 0;
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
      top: 310,
      right: -304,
      child: Transform.rotate(
        angle: _angle - daysFilter,
        child: Container(
          width: 420,
          height: 420,
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

                  var angleValue = value.toInt();

                  if (value < 0) {
                    setState(() {
                      var valueAnngle = value / 0.978260869565217;

                      _oldAngle = _angle;
                      startdate = DateTime(staticdate.year, staticdate.month,
                          staticdate.day + valueAnngle.toInt().abs() + 1);
                      endDate = DateTime(
                          staticEnddate.year,
                          staticEnddate.month,
                          staticEnddate.day + valueAnngle.toInt().abs() - 1);
                      if (dropdownValue == "90 days") {
                        endDate = DateTime(
                            endDate.year, endDate.month, endDate.day + 2);
                      } else {
                        endDate = DateTime(
                            endDate.year, endDate.month, endDate.day + 2);
                      }
                    });
                  } else {
                    setState(() {
                      var valueAnngle = value / 0.989010989019999;

                      if (value > 43) {
                        startdate = DateTime(staticdate.year, staticdate.month,
                            staticdate.day - valueAnngle.toInt() + 2);
                      } else {
                        startdate = DateTime(staticdate.year, staticdate.month,
                            staticdate.day - valueAnngle.toInt() + 1);
                      }

                      endDate = DateTime(
                          staticEnddate.year,
                          staticEnddate.month,
                          staticEnddate.day - valueAnngle.toInt() - 1);
                      if (dropdownValue == "90 days") {
                        endDate = DateTime(
                            endDate.year, endDate.month, endDate.day - 2);
                      } else {
                        endDate = DateTime(
                            endDate.year, endDate.month, endDate.day + 2);
                      }
                    });
                  }
                  setState(() {
                    if (angleValue > 360) {
                      _angle = 0;
                    }
                  });

                  setState(() {
                    if (angleValue < -360) {
                      _angle = 0;
                    }
                  });
                  setState(() {
                    //29 OCT
                    if (angleValue == -91) {
                      startdate = DateTime(staticdate.year, 10, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //30 NOV
                    if (angleValue == -120) {
                      startdate = DateTime(staticdate.year, 11, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    }
                    //31 DEC
                    if (angleValue == -150) {
                      startdate = DateTime(staticdate.year, 12, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //31 JAN
                    if (angleValue == 178) {
                      startdate = DateTime(staticdate.year, 01, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //28 FEB
                    if (angleValue == -207) {
                      startdate = DateTime(staticdate.year, 02, 28);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //31 MARCH
                    if (angleValue == 122) {
                      startdate = DateTime(staticdate.year, 03, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //30 APRIL
                    if (angleValue == 92) {
                      startdate = DateTime(staticdate.year, 04, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //31 MAY
                    if (angleValue == 60) {
                      startdate = DateTime(staticdate.year, 05, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    }
                    //30 JUNE
                    if (angleValue == 30 ||
                        angleValue == 390 ||
                        angleValue == 750) {
                      startdate = DateTime(staticdate.year, 06, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    }
                    //31 JULY
                    if (angleValue == 360 ||
                        angleValue == 0 ||
                        angleValue == 720) {
                      startdate = DateTime(staticdate.year, 07, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    }
                    //31 AUGUST
                    if (angleValue == -31 ||
                        angleValue == -361 ||
                        angleValue == -751) {
                      startdate = DateTime(staticdate.year, 08, 31);
                      endDate = startdate.add(Duration(days: daysDifference));
                    } //30 SEPT
                    if (angleValue == -61) {
                      startdate = DateTime(staticdate.year, 09, 30);
                      endDate = startdate.add(Duration(days: daysDifference));
                    }

                    if (startdate == DateTime(startdate.year, 07, 29)) {
                      _angle = 0;
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
