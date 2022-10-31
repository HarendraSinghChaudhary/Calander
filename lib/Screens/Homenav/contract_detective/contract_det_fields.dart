import 'dart:io';

import 'package:calcu_lien/Screens/Homenav/contract_detective/contract_detective.dart';
import 'package:calcu_lien/Screens/Homenav/contract_detective/contract_detective1.dart';
import 'package:calcu_lien/Screens/Homenav/homenav.dart';
import 'package:calcu_lien/utils/constants/images.dart';
import 'package:calcu_lien/utils/constants/screennavigation.dart';
import 'package:calcu_lien/utils/styleguide.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:calcu_lien/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Services/apisMethod.dart';

class contract_detectiveFields extends StatefulWidget {
  final File file;
  final String mail;
  final String extract_request_id;
  final String convert_request_id;
   contract_detectiveFields({Key? key,required this.file, required this.mail, required this.extract_request_id, required this.convert_request_id}) : super(key: key);

  @override
  State<contract_detectiveFields> createState() =>
      contract_detectiveFieldsState();
}

class contract_detectiveFieldsState extends State<contract_detectiveFields> {
  String statevalue = "FL";
  var SelectState = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"];

  String rolevalue = "My role on this project is the …";
  var RoleState = [
    'My role on this project is the …',
    "Design Professional", "General Contractor","Subcontractor", "Sub-subcontractor", "Material Supplier", "Other"
  ];
  bool isLoading = false;
  final _formkey = GlobalKey<FormState>();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController companyController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
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
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Image.asset(
                    ContractDetective,
                    color: kwhite,
                    width: 196,
                    height: 115,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 38),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: kwhite,
                    size: 20,
                  ),
                  onPressed: () {
                    pushRemove(context, HomeNav(currentindex: 2));
                  },
                ),
              ),
            ]),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(w * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Almost Done.",
                        style: textScroll.copyWith(color: kblack),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(top: w * 0.014, bottom: w * 0.04),
                          child: Text(
                            "We need a little more information to generate your results",
                            style: textbold.copyWith(fontSize: 16),
                          )

                          //  styleText(
                          //     "We need a little more information to generate your results",
                          //     Colors.black,
                          //     FontWeight.w500,
                          //     16),
                          ),
                      const Text(
                        "First Name*",
                        style: textbold,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: w * 0.014, bottom: w * 0.03),
                        child: TextFormField(
                          controller: firstnameController,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "Please enter first name";
                            }
                          }),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            // suffix: Text("available"),suffixStyle:
                            hintText: "First Name ",
                            // prefixIcon: Icon(Icons.person),
                          ),
                          autofocus: false,
                        ),
                      ),
                      const Text(
                        "Last Name*",
                        style: textbold,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: w * 0.014, bottom: w * 0.03),
                        child: TextFormField(
                          controller: lastnameController,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "Please enter last name";
                            }
                          }),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            // suffix: Text("available"),suffixStyle:
                            hintText: "Last Name ",
                            // prefixIcon: Icon(Icons.person),
                          ),
                          autofocus: false,
                        ),
                      ),
                      // styleText("Last Name*", kblack, FontWeight.normal, 15),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 6),
                      //   child: Container(
                      //     height: 44,
                      //     child: TextFormField(
                      //       decoration: const InputDecoration(
                      //         border: OutlineInputBorder(),
                      //         hintText: "  Last Name ",
                      //       ),
                      //       autofocus: false,
                      //     ),
                      //   ),
                      // ),
                      const Text(
                        "Company*",
                        style: textbold,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: w * 0.014, bottom: w * 0.03),
                        child: TextFormField(
                          controller: companyController,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "Please enter company name";
                            }
                          }),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            // suffix: Text("available"),suffixStyle:
                            hintText: "Company ",
                            // prefixIcon: Icon(Icons.person),
                          ),
                          autofocus: false,
                        ),
                      ),
                      const Text(
                        "City*",
                        style: textbold,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: w * 0.014, bottom: w * 0.03),
                        child: TextFormField(
                          controller: cityController,
                          validator: ((value) {
                            if (value!.isEmpty) {
                              return "Please enter city name";
                            }
                          }),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            // suffix: Text("available"),suffixStyle:
                            hintText: "City ",
                            // prefixIcon: Icon(Icons.person),
                          ),
                          autofocus: false,
                        ),
                      ),

                      const Text(
                        "State*",
                        style: textbold,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: w * 0.014, bottom: w * 0.03),
                        child: Container(
                          width: double.infinity,

                          height: h * 0.085,

                          // margin: EdgeInsets.only(left: 20,top: 10,right: 20 ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: Colors.black38,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(5)),

                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: DropdownButton<String>(
                                isExpanded: true,

                                value: statevalue,
                                onChanged: (String? newValue) =>
                                    setState(() => statevalue = newValue!),
                                items:
                                    SelectState.map<DropdownMenuItem<String>>(
                                        (String value) =>
                                            DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            )).toList(),

                                // add extra sugar..
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 42,
                                underline: SizedBox(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Role*",
                        style: textbold,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Container(
                          width: double.infinity,
                          height: h * 0.085,
                          decoration: BoxDecoration(
                              color: kwhite,
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  color: Colors.black38,
                                  width: 1,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Center(
                              child: DropdownButton<String>(
                                isExpanded: true,

                                value: rolevalue,
                                onChanged: (String? newValue) =>
                                    setState(() => rolevalue = newValue!),
                                items: RoleState.map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        )).toList(),

                                // add extra sugar..
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 42,
                                underline: SizedBox(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    isLoading?loader:  DefaultEButton(
                          width: double.infinity,
                          height: h * 0.069,
                          text: "Analyze",
                          txtcolor: kwhite,
                          radius: 2,
                          press: () {
                            if (_formkey.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                              });
                              uploadDetail(
                                widget.extract_request_id,
                                widget.convert_request_id,
                                widget.mail,
                                firstnameController.text,
                                lastnameController.text,
                                companyController.text,
                                rolevalue,
                                cityController.text,
                                statevalue
                              ).then((value) {
                                setState(() {
                                isLoading = false;
                              });
                                if(value){
                                  showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (ctx) => _Report(ctx)).whenComplete(() {
                                    pushNdRemove(context, HomeNav(currentindex: 2,));
                                  });

                                }else{

                                }
                              });
                             
                            }
                          },
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          btncolor: ktiledarkcolor),
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

  _Report(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      (){
        Navigator.pop(context);
      }

    );
    return StatefulBuilder(builder: (context, setState) {
      return Container(
        height: h * 0.55,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24), topLeft: Radius.circular(24)),
            color: kwhite),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          InkWell(
            onTap: () => Navigator.pop(context, false),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  alignment: Alignment.topRight, child: Icon(Icons.clear)),
            ),
          ),
          const Divider(
            height: 1,
            color: dividerClr,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Container(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(hurrayImageBtm_sheet)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Successfully Received your contract!",
              textAlign: TextAlign.center,
              style: textContent.copyWith(color: kblack),
            ),
          ),
          SizedBox(
            width: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                  "Soon you will receive an email from contract detective ",
                  textAlign: TextAlign.center,
                  style: textContent.copyWith(color: kblack)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "Thanks for using Contract Detective!",
              textAlign: TextAlign.center,
              style: textContent.copyWith(color: kblack),
            ),
          ),
        ]),
      );
    });
  }
}
