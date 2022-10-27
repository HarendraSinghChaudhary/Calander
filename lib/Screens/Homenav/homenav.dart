import 'package:calcu_lien/Screens/Homenav/calc_u_lien/calc_u_lien.dart';
import 'package:calcu_lien/Screens/Homenav/Help/help.dart';
import 'package:calcu_lien/Screens/Homenav/contract_detective/contract_detective.dart';
import 'package:calcu_lien/Screens/Homenav/lien_o_matic/lien_o_matic.dart';
import 'package:calcu_lien/Screens/Homenav/Podcast/podcast.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:text_scroll/text_scroll.dart';

class HomeNav extends StatefulWidget {
  int currentindex;
  HomeNav({Key? key, required this.currentindex}) : super(key: key);

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int? _index;

  final _pageoption = [
    const Calc_u_Lien(),
    const Lien_o_matic(),
    const Contract_Detective(),
    podcast(),
    const Help()
  ];
  @override
  void initState() {
    super.initState();
    _index = widget.currentindex;
    WidgetsBinding.instance.window.viewInsets.bottom;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false,
      floatingActionButton: const TextScroll(
        "How to file your income tax on time and available, textscroll",
        style: textScroll,
        intervalSpaces: 50,
        delayBefore: Duration(seconds: 1),
        velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
        selectable: false,
        mode: TextScrollMode.endless,
      ),
      body: _pageoption[_index!],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              iconSize: 20,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: ktiledarkcolor,
              unselectedFontSize: 12,
              selectedFontSize: 12,
              unselectedItemColor: homeNavIcnClr,

              // selectedLabelStyle:
              //     GoogleFonts.hind( fontWeight: FontWeight.normal),
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      firstIcon,
                      color: _index == 0 ? ktiledarkcolor : homeNavIcnClr,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      secondIcon,
                      color: _index == 1 ? ktiledarkcolor : homeNavIcnClr,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      thirdIcon,
                      color: _index == 2 ? ktiledarkcolor : homeNavIcnClr,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.mic_rounded,
                    size: 35,
                    color: _index == 3 ? ktiledarkcolor : homeNavIcnClr,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    fifthIcon,
                    color: _index == 4 ? ktiledarkcolor : homeNavIcnClr,
                  ),
                  label: "",
                ),
              ],
              currentIndex: _index!,
              onTap: (index) {
                setState(() {
                  _index = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
