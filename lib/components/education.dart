import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/widget/text_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:timelines/timelines.dart';

class EducationComponent extends StatefulWidget {
  const EducationComponent({Key? key}) : super(key: key);

  @override
  State<EducationComponent> createState() => _EducationComponentState();
}

class _EducationComponentState extends State<EducationComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth * 0.5,
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
            title: 'Education',
            textSize: 24.0,
            textFontWeight: FontWeight.w600,
          ),
          const SizedBox(height: 12.0,),
          Timeline.tileBuilder(
            shrinkWrap: true,
              scrollDirection: Axis.vertical,
              builder: TimelineTileBuilder.fromStyle(
                itemCount: 4,
                  contentsAlign: ContentsAlign.alternating,
                  contentsBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(title: '20 march 2020',textSize: 12.0,textcolor: Colors.indigo,),
                          TextWidget(title: 'Passed 10th',textFontWeight: FontWeight.w600,textSize: 20.0,),
                          TextWidget(title: 'Passed 10th grade from The Educators School charsadda and i got 800 marks out of 1100',textFontWeight: FontWeight.w600,textSize: 14.0,),
                        ],
                      ),),
                    );
                  }))
        ],
      ),
    );
  }
}
