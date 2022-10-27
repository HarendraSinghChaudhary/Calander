// import 'package:calcu_lien/Screens/Homenav/homenav.dart';

// import 'package:calcu_lien/Screens/Homenav/contract_detective/contract_detective1.dart';
// import 'package:calcu_lien/Screens/Homenav/contract_det_fields.dart';
// import 'package:calcu_lien/utils/constants/images.dart';

// import 'package:calcu_lien/utils/utils.dart';
// import 'package:calcu_lien/utils/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../calc_u_lien/Help/Settings/setting.dart';

// class Contract_DetectiveSec extends StatefulWidget {
//   const Contract_DetectiveSec({Key? key}) : super(key: key);

//   @override
//   State<Contract_DetectiveSec> createState() => _Contract_DetectiveSecState();
// }

// class _Contract_DetectiveSecState extends State<Contract_DetectiveSec> {
//   TextEditingController controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Stack(children: [
//             Container(
//               height: Get.height * 0.2,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Color.fromARGB(255, 68, 110, 97),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(30),
//                   bottomRight: Radius.circular(30),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                   top: 20,
//                 ),
//                 child: Image.asset(
//                   ContractDetective,
//                   color: Colors.white,
//                   width: 196,
//                   height: 115,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 38),
//               child: IconButton(
//                 icon: Icon(
//                   Icons.arrow_back_ios,
//                   color: Colors.white,
//                   size: 20,
//                 ),
//                 onPressed: () {
//                   pushRemove(
//                       context,
//                       BottomNavigation(
//                         currentindex: 2,
//                       ));
//                 },
//               ),
//             ),
//           ]),
//           Container(
//             child: Expanded(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 16.0,
//                         ),
//                         child: styleText("Take the advantage of our AI tool.",
//                             Colors.black, FontWeight.w600, 19),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 13.0,
//                         ),
//                         child: styleText(
//                             "Upload PDF or Images to refine your \n contract with us .",
//                             Color(0xFF858585),
//                             FontWeight.w400,
//                             16),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 13.0,
//                         ),
//                         child: styleText("Max Size : 20 MB & 100 Pages.",
//                             Color(0xFF446E61), FontWeight.w400, 16),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 8.0),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             DefaultButtonCurve(
//                               text: " Contract.pdf",
//                               height: 48,
//                               width: 145,
//                               press: () {},
//                               left: 0,
//                               right: 0,
//                               top: 0,
//                               fontsize: 16,
//                               color: kblacklight,
//                               textcolor: kblack,
//                               fontWeight: FontWeight.w500,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                 left: 8.0,
//                                 right: 8,
//                               ),
//                               child: styleText(
//                                   "OR", Colors.black, FontWeight.w400, 16),
//                             ),
//                             DefaultButtonCurve(
//                               text: "Take Photo",
//                               height: 48,
//                               width: 145,
//                               press: () {},
//                               left: 0,
//                               right: 0,
//                               top: 0,
//                               fontsize: 16,
//                               color: kblacklight,
//                               textcolor: kblack,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(top: 8.0),
//                         child: styleText(
//                             "Only PDF, DOC and DOCX formats are acceptable",
//                             Color(0xFF446E61),
//                             FontWeight.w400,
//                             16),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 12.0,
//                         ),
//                         child: styleText(
//                             "Provide an email address where you like to receive email .",
//                             Color(0xFF858585),
//                             FontWeight.w400,
//                             16),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 16,
//                         ),
//                         child: Container(
//                           height: 45,
//                           child: TextFormField(
//                             controller: controller,
//                             decoration: const InputDecoration(
//                               border: OutlineInputBorder(),
//                               // suffix: Text("available"),suffixStyle:
//                               hintText: "   test@gmail.com",
//                               // prefixIcon: Icon(Icons.person),
//                             ),
//                             autofocus: false,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 28,
//                       ),
//                       DefaultButton(
//                         text: 'Submit',
//                         width: double.infinity,
//                         height: 50,
//                         press: () {
//                           setState(() {
//                             PushTo(context, contract_detectiveFields());
//                           });
//                         },
//                         fontsize: 20,
//                         color: ktiledarkcolor,
//                         textcolor: kwhite,
//                         fontWeight: FontWeight.normal,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 22.0,
//                         ),
//                         child: styleText("How Contract Detective Works.",
//                             Colors.black, FontWeight.w600, 19),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 14.0,
//                         ),
//                         child: styleText(
//                             "1. Our tool examine the PDF received..",
//                             Color(0xFF858585),
//                             FontWeight.w400,
//                             16),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 10.0,
//                         ),
//                         child: styleText("2.Tool will check the issues.",
//                             Color(0xFF858585), FontWeight.w400, 16),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 10.0,
//                         ),
//                         child: styleText(
//                             "3. Tool will list issues is all areas.",
//                             Color(0xFF858585),
//                             FontWeight.w400,
//                             16),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 10.0,
//                         ),
//                         child: styleText(
//                             "4.Tool will send an email to your \n Registered Email Adress.",
//                             Color(0xFF858585),
//                             FontWeight.w400,
//                             16),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8.0),
//             child: styleText("How to file your income tax on time and availe",
//                 Color(0xFF446E61), FontWeight.w600, 18),
//           ),
//         ],
//       ),
//     );
//   }
// }
