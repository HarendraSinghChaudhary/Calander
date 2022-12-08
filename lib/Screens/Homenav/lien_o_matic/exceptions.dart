
import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class exceptions extends StatefulWidget {
  const exceptions({super.key});

  @override
  State<exceptions> createState() => _exceptionsState();
}

class _exceptionsState extends State<exceptions> {

  Future lomMainlaunchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }


   Future lomBondlaunchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
   Future lomLieanlaunchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
  Future lomBondslaunchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
  Future lomFormslaunchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future lomGetPaidlaunchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
      var  h = MediaQuery.of(context).size.height;
   var w = MediaQuery.of(context).size.width;

   final Uri toLaunchLomMain =
        Uri.parse("https://www.thelienzone.com/lienomatic/",);
        final Uri toLaunchLomLiens =
        Uri.parse('https://www.thelienzone.com/liens/',);
        final Uri toLaunchLomForms =
        Uri.parse('https://www.thelienzone.com/forms/',);
        final Uri toLaunchLomBonds =
        Uri.parse('https://www.thelienzone.com/bonds/',);
        final Uri toLaunchGetPaid =
        Uri.parse('https://www.thelienzone.com/getting-paid/',);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ktiledarkcolor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 16,
        ),
        title: Text(
          "Exceptions",
          style: textRegular.copyWith(fontWeight: FontWeight.normal),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: w * 0.03, right: w * 0.03, top: w * 0.065,bottom: w * 0.03,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textAlign: TextAlign.justify,
                  text:    TextSpan(children:[
                // TextSpan(text: """\n \n""", style: underLinedtxt),
                // TextSpan(text: """\n \n""", style: priContent),
               
                const TextSpan(
                    text:
                        "\n Make sure you read and understand these exceptions (learn more at",style: priContent),
                    WidgetSpan(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          lomMainlaunchInBrowser(toLaunchLomMain);
                        });
                      },
                      child: RichText(
                                textAlign: TextAlign.justify,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "  TheLienZone.com",style: textfContent
                                    ),
                                    TextSpan(
                                      text: ")",style: priContent
                                    )
                                  ],
                                  
                                ),
                      //  const Text("LienOMatic.com)",style:textfContent ,)
                       )))
                       ],),),

                        Padding(
                          padding:  EdgeInsets.only(left:w * 0.05),
                          child: SizedBox(
                            child: Column(children: [
                              RichText(
                                textAlign: TextAlign.justify,
                                text:  TextSpan(
                                children: [
                                  const TextSpan(text: """\n•	THE LIEN-O-MATIC IS FOR EDUCATIONAL INFORMATION ONLY AND IS NOT AND SHOULD NOT BE CONSIDERED LEGAL ADVICE, SO CONSULT YOUR OWN LAWYER BEFORE RELYING ON THE LIEN-O-MATIC AS LAWS MAY HAVE CHANGED OR BE INTERPRETED DIFFERENTLY DEPENDING ON YOUR JURISDICTION AND THE FACTS OF YOUR SPECIFIC SITUATION \n""", style:textfContent),
                        const TextSpan(text: """•	The Lien-O-Matic applies to Florida law only (Miller Act applies nationally)  
•	Not every rule or every exception is listed in the Lien-O-Matic, so do not rely on it to make decisions – consult with your own lawyer first 
•	Deadlines landing on weekends and legal holidays typically roll to the next business day (use the Calc-U-Lien tool) 
•	The time to serve or record the Notice to Owner, Notice to Contractor, Notice of Nonpayment or Claim of Lien may be shortened by operation of law or the acts/omissions of various parties (learn more about liens at """, style: priContent),
                 WidgetSpan(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          lomLieanlaunchInBrowser(toLaunchLomLiens);
                        });
                      },
                      child: RichText(
                                textAlign: TextAlign.justify,
                                text:const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "TheLienZone.com/liens",style: textfContent
                                    ),
                                    TextSpan(
                                      text: ")",style: priContent
                                    )
                                  ],
                                  
                                ),
                      //  const Text("LienOMatic.com)",style:textfContent ,)
                       ))),
                        const TextSpan(
                    text:
                        """	\n•	Even when a Notice to Owner, Notice to Contractor or Notice of Nonpayment are not required, they are strongly recommended (get free copies of these forms and more at """,style: priContent),
              WidgetSpan(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          lomFormslaunchInBrowser(toLaunchLomForms);
                        });
                      },
                      child: RichText(
                                textAlign: TextAlign.justify,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "TheLienZone.com/forms",style: textfContent
                                    ),
                                    TextSpan(
                                      text: ")",style: priContent
                                    )
                                  ],
                                  
                                ),
                                
                      //  const Text("LienOMatic.com)",style:textfContent ,)
                       ))),
                 const TextSpan(
                    text:
                        """\n•	References to payment bonds mean timely and properly recorded unconditional statutory payment bonds, not conditional payment bonds, transfer bonds, or common law bonds (learn more about bonds at""",style: priContent),
                    WidgetSpan(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          lomBondlaunchInBrowser(toLaunchLomBonds);
                        });
                      },
                      child: RichText(
                                textAlign: TextAlign.justify,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "TheLienZone.com/bonds",style: textfContent
                                    ),
                                    TextSpan(
                                      text: ")",style: priContent
                                    )
                                  ],
                                  
                                ),
                      //  const Text("LienOMatic.com)",style:textfContent ,)
                       ))),
                        const TextSpan(
                    text: """\n•	The time to serve documents or bring a lawsuit exclusively for retainage may extend beyond that which is listed in the Lien-O-Matic 
•	Lien rights on private projects for tenant improvements may only extend to the leasehold interest, not the fee simple interest in the property 
•	“First work” or delivery of materials typically means the first furnishing of labor or materials to the project site while under contract 
•	“Last work” or delivery of materials typically means the final furnishing of substantive contract or change order labor or materials, excluding punch list, repair or warranty work  
•	“Serve” typically means actual receipt by certified mail by those required to receive the document (but other means of service may be permitted) 
•	Laborers and subdivision improvements may be entitled to lien and/or bond rights but those rules are not listed in the Lien-O-Matic 
•	For tips on getting paid faster, go to """,style: priContent),
   WidgetSpan(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          lomGetPaidlaunchInBrowser(toLaunchGetPaid);
                        });
                      },
                      child: RichText(
                                textAlign: TextAlign.justify,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "TheLienZone.com/getting-paid",style: textfContent
                                    ),
                                    TextSpan(
                                      text: ")",style: priContent
                                    )
                                  ],
                                  
                                ),
                      //  const Text("LienOMatic.com)",style:textfContent ,)
                       ))),
                        
                                ]
                              ))
                              
                            ],),
                          ),
                        )

                            
                        ]))
            
          ),
        );
      
    
  }
}
