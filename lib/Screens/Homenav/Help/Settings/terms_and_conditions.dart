import 'package:calcu_lien/Screens/Homenav/Help/Settings/setting.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/projects.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:flutter/material.dart';

import '../../../../utils/utils.dart';

class Terms_and_Conditions extends StatefulWidget {
  const Terms_and_Conditions({Key? key}) : super(key: key);

  @override
  State<Terms_and_Conditions> createState() => _Terms_and_ConditionsState();
}

class _Terms_and_ConditionsState extends State<Terms_and_Conditions> {
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
            pushRemove(context, const Setting());
          },
          iconSize: 16,
        ),
        title: Text(
          "TERMS OF USE AND DISCLAIMER ",
          style: textRegular.copyWith(fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: w * 0.03, right: w * 0.03, top: w * 0.065),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              RichText(
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
              // Text(
              //   tAndC,
              //   style: textScroll.copyWith(color: kblack),
              //   // textAlign: TextAlign.start,
              // ),
              // SizedBox(
              //   height: h * 0.02,
              // ),
              // const Text(
              //   "This mobile application, Calc-U-Lien, Lien-O-Matic, ContractDectective and the podcast are for informational purposes only; they are not and should not be considered legal advice. This app and its tools should not be used for situations outside of Florida. While the app and tools provide certain information, forms, and synopsis of particular legal developments, they are only to be used as a reference tool. Materials and information may not be current and laws may have changed or be interpreted differently depending on the facts of your specific situation. The transmission and receipt of information from this app is not intended to and does not create an attorney-client relationship.  Do not provide us through this app or otherwise, any private or confidential information.  Do not act on any information from this app or any of its tools without first obtaining professional legal advice from your own lawyer.  With respect to ContractDetective, it is a free artificial intelligence tool which looks for several, specific construction contract provisions and explains their significance under Florida law only.  This is merely an educational tool, and it does not alter or amend your contract, nor does it review exhibits or documents you do not upload.  Since the system is automated, it may misclassify certain provisions or miss provisions which may be present.  There are other terms, conditions, and provisions in your contract which require your attention that ContractDetective is not programmed to detect.  ContractDetective is not a substitute for your detailed review of the contract or the hiring of a lawyer to assist you in the review of your contract, including, without limitation, all exhibits and other documents incorporated by reference into your contract.  By using this app and its tools as well as uploading a document, you understand and agree that a copy of the information and document and results will be sent to The Barthet Firm, but that there is no attorney client relationship between you and The Barthet Firm, or any lawyer employed by them.  You agree that we may contact you by email for marketing purposes.  CONSULT YOUR OWN LAWYER BEFORE YOU RELY OR ACT ON ANY INFORMATION YOU RECEIVE FROM THIS APP.  There are no warranties, representations or claims associated with this information in this app or its tools and we specifically disclaim any responsibility for the app or its tools’ accuracy, completeness or suitability for your specific use. You agree to indemnify, defend and hold us harmless from any liability, loss, claim and expense, including reasonable attorney’s fees and costs, if you violate these terms of use.  By using this app an its tools, you understand and agree to these terms and disclaimer.",
              //   style: textGrey,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
