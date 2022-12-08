import 'package:calcu_lien/utils/colors.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../utils/utils.dart';
import 'setting.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {


  Future linkFlaunchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future linkSlaunchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    final Uri toLaunchLinkFirst =
        Uri.parse('https://support.google.com/adwordspolicy/answer/1316548?hl=en',);
        final Uri toLaunchLinkSecond =
        Uri.parse('https://consumercal.org/california-online-privacy-protection-act-caloppa/#sthash.0FdRbT51.dpuf',);
    var h = MediaQuery.of(context).size.height;
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
          "Privacy Policy",
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
                  text:  TextSpan(children: [
                // TextSpan(text: """\n \n""", style: underLinedtxt),
                // TextSpan(text: """\n \n""", style: priContent),
                const TextSpan(
                    text:
                        """This privacy policy has been compiled to better serve those who are concerned with how their ‘Personally Identifiable Information’ (PII) is being used online. PII, as used in US privacy law and information security, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to obtain a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information.\n""",
                    style: priContent),
                const TextSpan(
                    text:
                        """\nWhat personal information do we collect from the people that visit our blog, website or app?\n""",
                    style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nWhen ordering or registering on our site, as appropriate, you may be asked to enter your name, email address, mailing address, phone number or other details to help you with your experience and allow us to forward information and updates.\n""",
                    style: priContent),
                const TextSpan(
                    text: "\nWhen do we collect information?",
                    style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nWe collect information from you when you register on our site, subscribe to our blog, respond to a survey, fill out a form or enter information on our site.\n""",
                    style: priContent),
                const TextSpan(
                    text: """\nHow do we use your information?\n""",
                    style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nWe may use the information we collect from you when you register, sign up for our blog, respond to a survey or marketing communication, surf the website, or use certain other site features in the following ways:
	•	To personalize your experience and to allow us to deliver the type of content and product offerings in which you are most interested.
	•	To improve our website and blog in order to better serve you.
	•	To allow us to better service you in responding to your requests.
	•	To administer a contest, promotion, survey or other site feature.
	•	To send periodic emails regarding our posts, our products and our company.\n""",
                    style: priContent),
                const TextSpan(
                    text: """\nHow do we protect visitor information?\n""",
                    style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nOur website is scanned on a regular basis for security holes and known vulnerabilities in order to make your visit to our site as safe as possible. We use regular Malware Scanning. We may use an SSL certificate. We never ask for credit card numbers.\n""",
                    style: priContent),
                const TextSpan(
                    text: """\nDo we use ‘cookies’?\n""", style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nYes. Cookies are small files that a site or its service provider transfers to your computer’s hard drive through your Web browser (if you allow) that enables the site’s or service provider’s systems to recognize your browser and capture and remember certain information. For instance, we use cookies to help us remember and process your request. They are also used to help us understand your preferences based on previous or current site activity, which enables us to provide you with improved services. We also use cookies to help us compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.
We use cookies to:

	•	Understand and save user’s preferences for future visits.
	•	Keep track of advertisements.
	•	Compile aggregate data about site traffic and site interactions in order to offer better site experiences and tools in the future. We may also use trusted third-party services that track this information on our behalf.
	•	You can choose to have your computer warn you each time a cookie is being sent, or you can choose to turn off all cookies. You do this through your browser settings. Each browser is a little different, so look at your browser’s Help menu to learn the correct way to modify your cookies.  If you disable cookies, some features will also be disabled. It won’t affect the user’s experience but some of our services will not function properly.\n""",
                    style: priContent),
                const TextSpan(
                    text: """\nThird-party disclosure\n""",
                    style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nWe do not sell, trade, or otherwise transfer to outside parties your Personally Identifiable Information unless we provide users with advance notice. This does not include website hosting partners and other parties who assist us in operating our website, conducting our business, or serving our users, so long as those parties agree to keep this information confidential. We may also release information when its release is appropriate to comply with the law, enforce our site policies, or protect ours or other’s rights, property, or safety.  However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.\n""",
                    style: priContent),
                const TextSpan(
                    text: """\nThird-party links\n""", style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nOccasionally, at our discretion, we may include or offer third-party products or services on our website. These third-party sites have separate and independent privacy policies. We therefore have no responsibility or liability for the content and activities of these linked sites. Nonetheless, we seek to protect the integrity of our site and welcome any feedback about these sites.\n""",
                    style: priContent),
                const TextSpan(text: """\nGoogle\n""", style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nGoogle’s advertising requirements can be summed up by Google’s Advertising Principles. They are put in place to provide a positive experience for users.""",
                    style: priContent),

                    WidgetSpan(child:
                    
                     GestureDetector(onTap: (){
                      setState(() {
                         linkFlaunchInBrowser(toLaunchLinkFirst);
                      });
                    }, child:Text("https://support.google.com/adwordspolicy/answer/1316548?hl=en\n",style: priContent.copyWith(color: Colors.blue),))),
                    const TextSpan(text: """\n We use Google AdSense Advertising on our website.  Google, as a third-party vendor, uses cookies to serve ads on our site. Google’s use of the DART cookie enables it to serve ads to our users based on previous visits to our site and other sites on the Internet. Users may opt-out of the use of the DART cookie by visiting the Google Ad and Content Network privacy policy.  We have implemented the following:
	•	Remarketing with Google AdSense
	•	Google Display Network Impression Reporting
	•	Demographics and Interests Reporting
We along with third-party vendors, such as Google use first-party cookies (such as the Google Analytics cookies) and third-party cookies (such as the DoubleClick cookie) or other third-party identifiers together to compile data regarding user interactions with ad impressions and other ad service functions as they relate to our website.\n""", style: priContent),
                const TextSpan(text: """\nOpting out:\n""", style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nUsers can set preferences for how Google advertises to you using the Google Ad Settings page. Alternatively, you can opt out by visiting the Network Advertising initiative opt out page or permanently using the Google Analytics Opt Out Browser add on.\n""",
                    style: priContent),
                const TextSpan(
                    text: """\nCalifornia Online Privacy Protection Act\n""",
                    style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nCalOPPA is the first state law in the nation to require commercial websites and online services to post a privacy policy. The law’s reach stretches well beyond California to require a person or company in the United States (and conceivably the world) that operates websites collecting personally identifiable information from California consumers to post a conspicuous privacy policy on its website stating exactly the information being collected and those individuals with whom it is being shared, and to comply with this policy. – See more at:""",
                    style: priContent),WidgetSpan(child: GestureDetector(onTap: (){
                      setState(() {
                       setState(() {
                         linkSlaunchInBrowser(toLaunchLinkSecond);
                      });
                      });
                    }, child:Text("https://consumercal.org/california-online-privacy-protection-act-caloppa/#sthash.0FdRbT51.dpuf",style: priContent.copyWith(color: Colors.blue),))),

                    TextSpan(text: """\n .  According to CalOPPA we agree to the following:
	•	Users can visit our site anonymously. Once this privacy policy is created, we will add a link to it on our home page or as a minimum on the first significant page after entering our website. Our Privacy Policy link includes the word ‘Privacy’ and can be easily be found on the page specified above.
	•	Users will be notified of any privacy policy changes:
Users are able to change their personal information by emailing us at \n""", style: priContent),
WidgetSpan(child: TextButton(onPressed: (){
                      setState(() {
                        launchUrl(Uri.parse("mailto:alex@barthet.com"));
                      });
                    }, child:Text("alex@barthet.com",style: priContent.copyWith(color: Colors.blue),))),
                const TextSpan(
                    text:
                        """\nHow does our site handle do not track signals?\n""",
                    style: underLinedtxt),
                const TextSpan(
                    text:
                        """\n We honor do not track signals and do not track, plant cookies, or use advertising when a Do Not Track (DNT) browser mechanism is in place.\n""",
                    style: priContent),
                const TextSpan(
                    text:
                        """\n Does our site allow third-party behavioral tracking?\n""",
                    style: underLinedtxt),
                const TextSpan(
                    text: """\nWe allow third-party behavioral tracking. \n""",
                    style: priContent),
                const TextSpan(
                    text:
                        """\nCOPPA (Children Online Privacy Protection Act) \n""",
                    style: underLinedtxt),
                const TextSpan(
                    text:
                        """\n When it comes to the collection of personal information from children under 13, the Children’s Online Privacy Protection Act (COPPA) puts parents in control. The Federal Trade Commission, the nation’s consumer protection agency, enforces the COPPA Rule, which spells out what operators of websites and online services must do to protect children’s privacy and safety online. We do not specifically market to children under 13.\n""",
                    style: priContent),
                const TextSpan(
                    text: """\nFair Information Practices \n""",
                    style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nThe Fair Information Practices Principles form the backbone of privacy law in the United States and the concepts they include have played a significant role in the development of data protection laws around the globe. Understanding the Fair Information Practice Principles and how they should be implemented is critical to comply with the various privacy laws that protect personal information.  In order to be in line with Fair Information Practices we will take the following responsive action, should a data breach occur, we will notify the users via email and we will notify the users via in-site notification.
We also agree to the Individual Redress Principle, which requires that individuals have a right to pursue legally enforceable rights against data collectors and processors who fail to adhere to the law. This principle requires not only that individuals have enforceable rights against data users, but also that individuals have recourse to courts or government agencies to investigate and/or prosecute non-compliance by data processors. \n""",
                    style: priContent),
                const TextSpan(text: """\nCAN SPAM Act \n""", style: underLinedtxt),
                const TextSpan(
                    text:
                        """\nThe CAN-SPAM Act is a law that sets the rules for commercial email, establishes requirements for commercial messages, gives recipients the right to have emails stopped from being sent to them, and spells out tough penalties for violations.  We collect your email address in order to:
	•	Send information, respond to inquiries, and/or other requests or questions.
	•	Market to our mailing list or continue to send emails to our clients after the original transaction has occurred.
To be in accordance with CANSPAM we agree to the following:
	•	NOT use false or misleading subjects or email addresses.
	•	Identify the message as an advertisement in some reasonable way.
	•	Include the physical address of our business or site headquarters.
	•	Monitor third-party email marketing services for compliance, if one is used.
	•	Honor opt-out/unsubscribe requests quickly.
	•	Allow users to unsubscribe by using the link at the bottom of each email or by contacting us.
If at any time you would like to unsubscribe from receiving future emails, you can email us at\n""",
                    style: priContent),
                    WidgetSpan(child: GestureDetector(onTap: (){
                      setState(() {
                        launchUrl(Uri.parse("mailto:alex@barthet.com"));
                      });
                    }, child:Text("alex@barthet.com",style: priContent.copyWith(color: Colors.blue),))),
                const TextSpan(text: """\nContacting Us\n""", style: underLinedtxt),
                const TextSpan(
                    text:
                        """\n If there are any questions regarding this privacy policy you may contact us using the information below.
www.thelienzone.com
200 S. Biscayne Blvd., Suite 1650
Miami, FL 33131
USA
alex@barthet.com\n""",
                    style: priContent),
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
