import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../text_widget.dart';


class AnimatedButtonWidget extends StatefulWidget {
  AnimatedButtonWidget({Key? key,this.title,this.onTap,this.icon,this.subTitle}) : super(key: key);

  String? title;
  String? subTitle;
  IconData? icon;
  VoidCallback? onTap;

  @override
  State<AnimatedButtonWidget> createState() => _AnimatedButtonWidgetState();
}

class _AnimatedButtonWidgetState extends State<AnimatedButtonWidget> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: widget.onTap,
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          border: Border.all(color: isHovering ? Colors.grey : Colors.white),
          color: isHovering ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(14.0)
        ),
        child: Row(
          children: [
            Card(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FaIcon(widget.icon,size: 20.0,),
            ),
            ),
            const SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(title: widget.title),
                TextWidget(title: widget.subTitle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
