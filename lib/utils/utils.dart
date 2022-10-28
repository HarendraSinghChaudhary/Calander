import 'package:calcu_lien/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function() press;
  final double width;
  final double height;

  final double fontsize;
  final Color color;
  final Color textcolor;
  final FontWeight fontWeight;

  const DefaultButton(
      {Key? key,
      required this.text,
      required this.height,
      required this.width,
      required this.press,
      required this.fontsize,
      required this.color,
      required this.textcolor,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: color),
          child: styleText(text, textcolor, fontWeight, fontsize)),
    );
  }
}

class DefaultEButton extends StatelessWidget {
  const DefaultEButton({
    required this.width,
    required this.height,
    Key? key,
    required this.text,
    required this.txtcolor,
    required this.radius,
    required this.press,
    required this.fontWeight,
    required this.fontSize,
    // required this.cicon,
    required this.btncolor,
  }) : super(key: key);
  final String text;

  final Function() press;
  final double width;
  final double height;
  final double radius;
  final double fontSize;
  // final Widget cicon;
  final Color btncolor;
  final Color txtcolor;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        color: btncolor,
        onPressed: press,
        child: Center(child: styleText(text, txtcolor, fontWeight, fontSize)),
      ),
    );
  }
}

Text styleText(
    String _value, Color color, FontWeight weight, double _fontSize) {
  return Text(
    _value,
    style: TextStyle(
        color: color,
        fontWeight: weight,
        fontSize: _fontSize,
        fontFamily: "Hind"),
  );
}

void pushRemove(context, var st) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => st), (route) => false);
}

// void Redirect(Context, var st){
//  Navigator.push(context, route)
// }
void PushTo(context, Widget) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Widget,
      ));
}

void PushRemove(context, Widget) {
  Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context) => Widget), (route) => false);
}

class DefaultButtonCurve extends StatelessWidget {
  final String text;
  final Function() press;
  final double width;
  final double height;
  final double left;
  final double right;
  final double top;
  final double fontsize;
  final Color color;
  final Color textcolor;
  final FontWeight fontWeight;

  const DefaultButtonCurve(
      {Key? key,
      required this.text,
      required this.height,
      required this.width,
      required this.press,
      required this.left,
      required this.right,
      required this.top,
      required this.fontsize,
      required this.color,
      required this.textcolor,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
          margin: EdgeInsets.only(left: left, right: right, top: top),
          alignment: Alignment.center,
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: styleText(text, textcolor, fontWeight, fontsize)),
    );
  }
}

const loader = Center(child: CircularProgressIndicator());