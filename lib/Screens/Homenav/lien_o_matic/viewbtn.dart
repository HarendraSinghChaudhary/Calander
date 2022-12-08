import 'package:calcu_lien/Screens/Homenav/lien_o_matic/an_architect.dart';
import 'package:calcu_lien/utils/projects.dart';
import 'package:calcu_lien/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class View_Btn extends StatefulWidget {
  const View_Btn({Key? key}) : super(key: key);

  @override
  State<View_Btn> createState() => _View_BtnState();
}

class _View_BtnState extends State<View_Btn> {
  @override
  Widget build(BuildContext context) {
      var  h = MediaQuery.of(context).size.height;
   var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 110, 97),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            pushRemove(
                context,
                An_Architect(
                  project: projects, title: null,
                ));
          },
          iconSize: 16,
        ),
        title: styleText("I don't know", Colors.white, FontWeight.normal, 22),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                  child: styleText('What to file and when', Colors.black,
                      FontWeight.w500, 18),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: SingleChildScrollView(
                        child: styleText(
                            "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.\n If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in 15th century All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.",
                            Colors.black,
                            FontWeight.w300,
                            15)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
