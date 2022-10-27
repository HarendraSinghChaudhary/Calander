import 'package:calcu_lien/Screens/Homenav/Help/Settings/privacy-policy.dart';
import 'package:calcu_lien/Screens/Homenav/Help/Settings/terms_and_conditions.dart';
import 'package:calcu_lien/Screens/Homenav/homenav.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import '../../../../utils/utils.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
                  currentindex: 4,
                ));
          },
          iconSize: 16,
        ),
        title: Text(
          "Setting",
          style: textRegular.copyWith(fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (() {
              PushTo(context, const Privacy_Policy());
            }),
            minLeadingWidth: 0,
            leading: SvgPicture.asset(privacypolicyIcon),
            title: Text(
              "Privacy Policy",
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
              PushTo(context, const Terms_and_Conditions());
            }),
            minLeadingWidth: 0,
            leading: SvgPicture.asset(termsNdCond),
            title: Text(
              "Terms and Conditions",
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
