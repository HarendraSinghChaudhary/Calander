import 'package:calcu_lien/Screens/Introduction/menu.dart';
import 'package:calcu_lien/utils/Preference/preference.dart';

import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  bool valuefirst = false;

  @override
  void initState() {

    Preference.pref.setBool("isNewUser",false);
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ktiledarkcolor,
        title: const Text(
          "Terms of use and disclaimer",
          style: textRegular,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: w * 0.03,
            right: w * 0.03,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    // left: w * 0.03,
                    // right: w * 0.03,
                    top: h * 0.025,
                    bottom: h * 0.018),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: w * 0.045,
                        right: w * 0.045,
                        top: w * 0.045,
                        bottom: w * 0.055),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   "Terms of use and disclaimer",
                        //   style: textHead.copyWith(
                        //       color: kblack, fontWeight: FontWeight.w700),
                        //   textAlign: TextAlign.start,
                        // ),
                        // SizedBox(
                        //   height: w * 0.025,
                        // ),
                        SizedBox(
                            height: h * 0.5,
                            child:  SingleChildScrollView(
                                child:  RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                children: [
                  TextSpan(
                    text: """ 
BY USING THIS APP AND ITS TOOLS, YOU UNDERSTAND AND AGREE TO THESE TERMS AND DISCLAIMER.  THIS APP, CALC-U-LIEN, LIEN-O-MATIC, CONTRACT DECTECTIVE, PODCAST, AND WEBSITE ARE FOR INFORMATIONAL PURPOSES ONLY; THEY ARE NOT AND SHOULD NOT BE CONSIDERED LEGAL ADVICE. CONSULT YOUR OWN LAWYER BEFORE YOU RELY OR ACT ON ANY INFORMATION YOU RECEIVE FROM THIS APP OR TOOLS.""",style: textScroll.copyWith(color: kblack)
                  ), 
                const  TextSpan(
                    text: """This app and its tools should not be used for situations outside of Florida. While the app and tools provide certain information, forms, and synopsis of particular legal developments, they are only to be used as a reference tool. Materials and information may not be current and laws may have changed or be interpreted differently depending on your jurisdiction or the facts of your specific situation. The transmission and receipt of information from this app is not intended to and does not create an attorney-client relationship.  Do not provide us through this app or otherwise, any private or confidential information.  Do not act on any information from this app or any of its tools without first obtaining legal advice from your own lawyer.  With respect to ContractDetective, it is a free artificial intelligence tool which looks for several, specific construction contract provisions and explains their significance under Florida law only.  This is merely an educational tool, and it does not alter or amend your contract, nor does it review exhibits or documents you do not upload.  Since the system is automated, it may misclassify certain provisions or miss provisions which may be present.  There are other terms, conditions, and provisions in your contract which require your attention that ContractDetective is not programmed to detect.  ContractDetective is not a substitute for your detailed review of the contract or the hiring of a lawyer to assist you in the review of your contract, including, without limitation, all exhibits and other documents incorporated by reference into your contract.  By using this app and its tools as well as uploading a document, you understand and agree that a copy of the information and document and results will be sent to The Barthet Firm, but that there is no attorney client relationship between you and The Barthet Firm, or any lawyer employed by them.  You agree that we may contact you by email or other means for marketing purposes.  There are no warranties, representations or claims associated with this information in this app or its tools and we specifically disclaim any responsibility for the app or its tools’ accuracy, completeness or suitability for your specific use. You agree to indemnify, defend and hold us harmless from any liability, loss, claim and expense, including reasonable attorney’s fees and costs, if you violate these terms of use.
                    """,style: textGrey,
                  )
                ]
              )),
           )),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      value: valuefirst,
                      // checkColor: Colors.blue,
                      activeColor: ktiledarkcolor,
                      onChanged: (val) {
                        setState(() {
                          valuefirst = val!;
                        });
                      }),
                  RichText(
                    text: TextSpan(
                      text: 'I accept to ',
                      //style: DefaultTextStyle.of(context).style,
                      style: textfContent.copyWith(
                          fontFamily: "Hind", color: klightGreyclr),
                      //  GoogleFonts.hind(
                      //     // fontSize: 18,
                      //     // color: Colors.black87,
                      //     // fontWeight: FontWeight.w500
                      //     ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Terms & Conditions',
                            style: textfContent.copyWith(
                                color: ktiledarkcolor,
                                decoration: TextDecoration.underline)),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: h * 0.045, bottom: h * 0.045),
                child: DefaultEButton(
                  btncolor: ktiledarkcolor,
                  fontWeight: FontWeight.w500,
                  height: h * 0.070,
                  width: double.infinity,
                  fontSize: 20,
                  press: () {
                    valuefirst ? pushTo(context, Menu()) : () {};
                  },
                  radius: 2,
                  text: "Continue",
                  txtcolor: kwhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
