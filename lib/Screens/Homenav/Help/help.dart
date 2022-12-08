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
import 'package:url_launcher/url_launcher.dart';
class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {

  bool _hasCallSupport = false;

 


  @override
  void initState() {

    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });

   

    super.initState();
    
  }
    Future makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: "305-347-5295",
    );
    await launchUrl(launchUri);
  }

  


 Future<void> _launchUniversalLinkIos(Uri url) async {
    final bool nativeAppLaunchSucceeded = await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    );
    if (!nativeAppLaunchSucceeded) {
      await launchUrl(
        url,
        mode: LaunchMode.externalNonBrowserApplication,
      );
    }
  }

 



  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
   var  h = MediaQuery.of(context).size.height;
  var  w = MediaQuery.of(context).size.width;

 final Uri toLaunch =
        Uri(scheme: 'http', path: 'www.youtube.com/@TheLienZoneConstructionLawBlog/videos',);
 
    return Scaffold(
       bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom:w*0.03,right:w*0.03 ),
         child: defRow(context),
       ),
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
            onTap: (){
              setState(() {
                _launchUniversalLinkIos(toLaunch);
                
              });

            },
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
            onTap: _hasCallSupport
                    ? () => setState(() {
                          makePhoneCall();
                        })
                    : null,
            minLeadingWidth: 0,
            leading: SvgPicture.asset(LiveAssistIcon),
            title: Text(
              "Call me, Alex Barthet (305-347-5295)",
              style: textfContent.copyWith(fontWeight: FontWeight.w400),
            ),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          const Divider(
            height: 1,
            color: dividerClr,
          ),
          ListTile(
            onTap:() async{
              setState(() {
                launchUrl(Uri.parse("mailto:alex@barthet.com"));
              });
            },
            minLeadingWidth: 0,
            leading: SvgPicture.asset(emailIcon,color: ktiledarkcolor,),
            title: Text(
              "Email me (alex@barthet.com)",
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
