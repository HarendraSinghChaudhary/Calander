import 'package:calcu_lien/Screens/Homenav/homenav.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'help.dart';

class Help_And_Support extends StatefulWidget {
  const Help_And_Support({Key? key}) : super(key: key);

  @override
  State<Help_And_Support> createState() => _Help_And_SupportState();
}

class _Help_And_SupportState extends State<Help_And_Support> {
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
            // pushRemove(
            //     context,
            //     HomeNav(
            //       currentindex: 4,
            //     ));
          },
          iconSize: 16,
        ),
        title: Text(
          "Help and Support",
          style: textRegular.copyWith(fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(w * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome, kindly share your thought\n here.",
                style: textScroll.copyWith(color: kblack),
                // textAlign: TextAlign.start,
              ),
              Padding(
                padding: EdgeInsets.only(top: w * 0.06),
                child: TextFormField(
                  //controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "Subject",
                    // prefixIcon: Icon(Icons.person),
                  ),
                  autofocus: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: w * 0.045),
                child: TextFormField(
                  //controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "Email Address",
                    // prefixIcon: Icon(Icons.person),
                  ),
                  autofocus: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: w * 0.045),
                child: TextFormField(
                  maxLines: null,
                  minLines: 6,
                  //controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    // suffix: Text("available"),suffixStyle:
                    hintText: "Message Details",
                    // prefixIcon: Icon(Icons.person),
                  ),
                  autofocus: false,
                ),
              ),
              SizedBox(
                height: w * 0.15,
              ),
              DefaultEButton(
                  width: double.infinity,
                  height: h * 0.069,
                  text: "Submit",
                  txtcolor: kwhite,
                  radius: 2,
                  press: () {},
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  btncolor: ktiledarkcolor),
            ],
          ),
        ),
      ),
    );
  }
}
