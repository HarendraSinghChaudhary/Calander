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
  DateTime _currentdate = DateTime.now();
  Future<Null> _datechange(BuildContext context) async {
    final DateTime? _datechange = await showDatePicker(
        context: context,
        initialDate: _currentdate,
        firstDate: DateTime(2001),
        lastDate: _currentdate);
    if (_datechange != null) {
      setState(() {
        _currentdate = _datechange;
      });
    }
  }

  DateTime _currentdate1 = DateTime.now();
  Future<Null> _datechange1(BuildContext context) async {
    final DateTime? _datechange1 = await showDatePicker(
        context: context,
        initialDate: _currentdate1,
        firstDate: DateTime(2001),
        lastDate: _currentdate1);
    if (_datechange1 != null) {
      setState(() {
        _currentdate1 = _datechange1;
      });
    }
  }

  String noticevalue = "Florida notice to owner(45 Days)";
  var Notice = [
    'Florida notice to owner(45 Days)',
  ];

  @override
  Widget build(BuildContext context) {
    String dob = DateFormat.yMd().format(_currentdate);
    String _joningdate = DateFormat.yMd().format(_currentdate1);
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
            child: Center(
              child: Image.asset(
                Calc_u_Lien_logo,
                height: h * 0.15,
                width: w * 0.3,
                color: kwhite,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(left: w * 0.03, right: w * 0.03, top: w * 0.03),
            child: Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: DropdownButton<String>(
                  isExpanded: true,

                  value: noticevalue,
                  onChanged: (String? newValue) =>
                      setState(() => noticevalue = newValue!),
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
                top: w * 0.03,
                bottom: w * 0.06),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: h * 0.07,
                  width: w * 0.45,
                  child: Card(
                    elevation: 3,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              _datechange1(context);
                            },
                            icon: const Icon(Icons.calendar_month_sharp,
                                color: ktiledarkcolor)),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          _joningdate,
                          style: textbold.copyWith(color: ktiledarkcolor),
                        ),
                      ],
                    ),
                  ),
                ),
                // const SizedBox(
                //   width: 13,
                // ),
                SizedBox(
                  height: h * 0.07,
                  width: w * 0.45,
                  child: Card(
                    elevation: 3,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              _datechange1(context);
                            },
                            icon: const Icon(Icons.calendar_month_sharp,
                                color: ktiledarkcolor)),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          _joningdate,
                          style: textbold.copyWith(color: ktiledarkcolor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Florida notice to owner(45 Days)",
            style: textScroll,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ktiledarkcolor,
        onPressed: () {
          replaceRoute(context, HomeNav(currentindex: 4));
        },
        child: const Icon(
          Icons.question_mark,
        ),
      ),
    );
  }
}
