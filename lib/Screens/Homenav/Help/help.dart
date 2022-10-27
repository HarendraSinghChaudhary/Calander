import 'package:calcu_lien/Screens/Homenav/Help/about_us.dart';
import 'package:calcu_lien/Screens/Homenav/Help/help_and_support.dart';
import 'package:calcu_lien/Screens/Homenav/Help/how_app_works.dart';
import 'package:calcu_lien/Screens/Homenav/Help/Settings/setting.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ktiledarkcolor,
        automaticallyImplyLeading: false,
        // automaticallyImplyLeading: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back_ios),
        //   onPressed: () {
        //     pushRemove(context, HomeNav(currentindex: 0));
        //   },
        //   iconSize: 16,
        // ),
        title: Text(
          "Help",
          style: textRegular.copyWith(fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {},
            minLeadingWidth: 0,
            leading: SvgPicture.asset(EduVidIcon),
            title: Text(
              "Educational Videos",
              style: textfContent.copyWith(fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(
            height: 1,
            color: dividerClr,
          ),
          ListTile(
            onTap: (() {
              PushTo(context, How_App_Works());
            }),
            minLeadingWidth: 0,
            leading: SvgPicture.asset(HowAppWorkIcon),
            title: Text(
              "How app works",
              style: textfContent.copyWith(fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(
            height: 1,
            color: dividerClr,
          ),
          ListTile(
            onTap: (() {}),
            minLeadingWidth: 0,
            leading: SvgPicture.asset(LiveAssistIcon),
            title: Text(
              "Call me for live assistance?",
              style: textfContent.copyWith(fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(
            height: 1,
            color: dividerClr,
          ),
          ListTile(
            onTap: (() {
              PushTo(context, const Help_And_Support());
            }),
            minLeadingWidth: 0,
            leading: SvgPicture.asset(HelpNdSupIcon),
            title: Text(
              "Help and Support",
              style: textfContent.copyWith(fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(
            height: 1,
            color: dividerClr,
          ),
          ListTile(
            onTap: (() {
              PushTo(context, const About_Us());
            }),
            minLeadingWidth: 0,
            leading: SvgPicture.asset(aboutUsIcon),
            title: Text(
              "About us",
              style: textfContent.copyWith(fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(
            height: 1,
            color: dividerClr,
          ),
          ListTile(
            onTap: (() {
              PushTo(context, const Setting());
            }),
            minLeadingWidth: 0,
            leading: SvgPicture.asset(settingIcon),
            title: Text(
              "Settings",
              style: textfContent.copyWith(fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(
            height: 1,
            color: dividerClr,
          ),
        ],
      ),
    );
  }
}
