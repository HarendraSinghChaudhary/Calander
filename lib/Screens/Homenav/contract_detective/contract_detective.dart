import 'dart:io';

import 'package:calcu_lien/Screens/Homenav/contract_detective/contract_det_fields.dart';
import 'package:calcu_lien/Screens/Homenav/contract_detective/contract_detective1.dart';
import 'package:calcu_lien/Services/apisMethod.dart';
import 'package:calcu_lien/Services/pickfile.dart';
import 'package:calcu_lien/main.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:email_validator/email_validator.dart';

class Contract_Detective extends StatefulWidget {
  const Contract_Detective({Key? key}) : super(key: key);

  @override
  State<Contract_Detective> createState() => _Contract_DetectiveState();
}

class _Contract_DetectiveState extends State<Contract_Detective> {
  final _formkey = GlobalKey<FormState>();

  TextEditingController controller = TextEditingController();
  bool isEmail(String input) => EmailValidator.validate(input);
  File file = File("");
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {

    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
       bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom:w*0.03,right:w*0.03 ),
         child: defRow(context),
       ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Container(
              height: h * 0.2,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: ktiledarkcolor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.only(
                 top: w*0.1,bottom: w*0.02 
                ),
                child: Center(
                  child: Image.asset(
                    ContractDetective,
                    color: kwhite,
                    height: h*0.5,
                        width:w*0.7,
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(w * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding:
                              EdgeInsets.only(top: w * 0.03, bottom: w * 0.025),
                          child: Text(
                            "Take the advantage of our AI tool.",
                            style: textScroll.copyWith(color: kblack),
                          )

                          // styleText("Take the advantage of our AI tool.",
                          //     Colors.black, FontWeight.w600, 19),
                          ),
                      const Text(
                        "Upload PDF or Images to refine your \n contract with us .",
                        style: textGrey,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: w * 0.025, bottom: w * 0.016),
                          child: Text("Max Size : 20 MB & 100 Pages.",
                              style: textGrey.copyWith(color: ktiledarkcolor))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DefaultEButton(
                              width: w * 0.4,
                              height: h * 0.06,
                              text: "Upload Contract",
                              txtcolor: kblack,
                              radius: 10,
                              press: () {
                                filePicker().then((value) {
                                  if(value!=null){
                                    file = File(value);
                                  }
                                  setState(() {});
                                });
                                
                              },
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              btncolor: bttnClr),
                          // DefaultButtonCurve(
                          //   text: "Update Contract.pdf",
                          //   height: 48,
                          //   width: 145,
                          //   press: () {},
                          //   left: 0,
                          //   right: 0,
                          //   top: 0,
                          //   fontsize: 16,
                          //   color: kblacklight,
                          //   textcolor: kblack,
                          //   fontWeight: FontWeight.w500,
                          // ),
                          Padding(
                              padding: EdgeInsets.only(
                                left: w * 0.015,
                                right: w * 0.015,
                              ),
                              child: Text(
                                "OR",
                                style: textGrey.copyWith(color: kblack),
                              )),
                          DefaultEButton(
                              width: w * 0.4,
                              height: h * 0.06,
                              text: "Take Photo",
                              txtcolor: kblack,
                              radius: 10,
                              press: () {},
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              btncolor: bttnClr),
                          // DefaultButtonCurve(
                          // //   text: "Take Photo",
                          // //   height: 48,
                          // //   width: 145,
                          // //   press: () {
                          // //     setState(() {
                          // //       PushTo(context, const contract_detectiveFields());
                          // //     });
                          // //   },
                          // //   left: 0,
                          // //   right: 0,
                          // //   top: 0,
                          // //   fontsize: 16,
                          // //   color: kblacklight,
                          // //   textcolor: kblack,
                          // //   fontWeight: FontWeight.w500,
                          // // ),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: w * 0.017, bottom: w * 0.020),
                          child: Text(
                              "Only PDF, DOC and DOCX formats are acceptable",
                              style: textGrey.copyWith(color: ktiledarkcolor))),
                              Visibility(
                                visible: file.path!="",
                                child: Padding(
                                                        padding: EdgeInsets.only(
                                top: w * 0.017, bottom: w * 0.020),
                                                        child: Text(
                                file.path.split("/").last,
                                style: textGrey.copyWith(color: ktiledarkcolor,fontWeight: FontWeight.w700))),
                              ),
                      const Text(
                        "Provide an email address where you like to receive email .",
                        style: textGrey,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: w * 0.017, bottom: w * 0.07),
                        child: TextFormField(
                          controller: controller,
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                          validator: ((emailController) {
                            if (emailController!.isEmpty) {
                              return "Please enter Email";
                            } else if (!isEmail(emailController)) {
                              return "Please enter a valid email";
                            }
                            ;
                          }),
                          decoration: const InputDecoration(
                            // constraints:
                            //     // BoxConstraints(maxHeight: 60, minHeight: 60),
                            border: OutlineInputBorder(),
                            // suffix: Text("available"),suffixStyle:
                            hintText: "   test@gmail.com",
                            // prefixIcon: Icon(Icons.person),
                          ),
                          autofocus: false,
                        ),
                      ),

                      // const SizedBox(
                      //   height: 28,
                      // ),
                     isLoading?loader: DefaultEButton(
                          width: double.infinity,
                          height: h * 0.072,
                          text: "Submit",
                          txtcolor: kwhite,
                          radius: 2,
                          press: () {
                            if(file.path.isEmpty){
                             return showSnack(context, "Please Select Document");
                              
                            }
                            if (_formkey.currentState!.validate()) {
                              isLoading=true;
                              setState(() {
                                
                              });
                              uploadFile(file).then((value) {
                                setState(() {
                                  isLoading=false;
                                });
                                print("api done");
                                if(value!=null){
                                  print("condition");
                                  String data = value;
                              pushTo(
                                context,  
                                ContractDetectiveFields(
                                  file: file,
                                  mail: controller.text,
                                  convert_request_id: data.split(",").last,
                                  extract_request_id: data.split(",").first,
                                  ));
                                  print("condition, end");

                                }
                                
                                print(value);
                              });
                            }
                          },
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          btncolor: ktiledarkcolor),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // DefaultButton(
                      //   text: 'Submit',
                      //   width: double.infinity,
                      //   height: 50,
                      //   press: () {
                      //     setState(() {
                      //       PushTo(context, const contract_detectiveFields());
                      //     });
                      //   },
                      //   // top: 0,
                      //   // left: 0,
                      //   // right: 0,
                      //   fontsize: 20,
                      //   color: ktiledarkcolor,
                      //   textcolor: kwhite,
                      //   fontWeight: FontWeight.normal,
                      // ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: h * 0.035, bottom: h * 0.03),
                        child: Text(
                          "How Contract Detective Works.",
                          style: textScroll.copyWith(color: kblack),
                        ),
                      ),
                      const Text(
                        "1. Our tool examine the PDF received.",
                        style: textGrey,
                      ),

                      Padding(
                        padding:
                            EdgeInsets.only(top: w * 0.02, bottom: w * 0.02),
                        child: const Text(
                          "2.Tool will check the issues.",
                          style: textGrey,
                        ),
                      ),
                      const Text(
                        "3.Tool will list issues in all areas.",
                        style: textGrey,
                      ),

                      Padding(
                        padding:
                            EdgeInsets.only(top: w * 0.02, bottom: w * 0.02),
                        child: const Text(
                          "4.Tool will send an email to your \n   Registered Email Address.",
                          style: textGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
