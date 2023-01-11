import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widget/text_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class AboutComponent extends StatefulWidget {
  const AboutComponent({Key? key}) : super(key: key);

  @override
  State<AboutComponent> createState() => _AboutComponentState();
}

class _AboutComponentState extends State<AboutComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: context.screenWidth < 900 ? context.screenWidth * 0.9 : context.screenWidth * 0.3,
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: [
          Image.asset("images/dev.png",height: 156.0,),
          TextWidget(title: 'Muhammad Hashim',textSize: 30.0,textFontWeight: FontWeight.w600,),
          TextWidget(title: 'i\'m Developer and i\'m looking for Intership',textAlign: TextAlign.center,),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              Chip(label: TextWidget(title: 'Flutter Developer',textcolor: Colors.white,),backgroundColor: Colors.green.shade500,padding: EdgeInsets.all(8.0),),
              Chip(label: TextWidget(title: 'Full Stack Web Developer',textcolor: Colors.white,),backgroundColor: Colors.green.shade500,padding: EdgeInsets.all(8.0),)
            ],
          ),
          Divider(),
          Container(
            child: Row(
              children: [
                Card(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(FontAwesomeIcons.githubAlt,size: 20.0,),
                ),
                ),
                const SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(title: 'Github'),
                    TextWidget(title: 'Hashimkhann1'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
