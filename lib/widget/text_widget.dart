import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {
  TextWidget({Key? key,required this.title,this.textFontWeight,this.textSize,this.textcolor,this.textAlign}) : super(key: key);

  String? title;
  Color? textcolor;
  double? textSize;
  FontWeight? textFontWeight;
  TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(title.toString(), textAlign: textAlign, style: TextStyle(
      color: textcolor,
      fontSize: textSize,
      fontWeight: textFontWeight,
    ),);
  }
}
