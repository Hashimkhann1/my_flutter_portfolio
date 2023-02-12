import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widget/animated_button/animated_button_widget.dart';
import 'package:portfolio/widget/social_icon/socialicon.dart';
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
      width: context.screenWidth < 900 ? context.screenWidth * 0.9 : context.screenWidth <1600 ? context.screenWidth * 0.3 : context.screenWidth * 0.26,
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: [
          Image.asset("images/dev.png",height: 156.0,),
          TextWidget(title: 'Muhammad Hashim',textSize: 30.0,textFontWeight: FontWeight.w600,),
          TextWidget(title: 'i\'m Developer and i\'m looking for Intership',textAlign: TextAlign.center,),
          const SizedBox(height: 8.0,),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            alignment: WrapAlignment.center,
            children: [
              Chip(label: TextWidget(title: 'Flutter Developer',textcolor: Colors.white,),backgroundColor: Colors.green.shade500,padding: EdgeInsets.all(8.0),),
              Chip(label: TextWidget(title: 'Full Stack Web Developer',textcolor: Colors.white,),backgroundColor: Colors.green.shade500,padding: EdgeInsets.all(8.0),)
            ],
          ),
          Divider(),
          AnimatedButtonWidget(title: 'Github',subTitle: 'HashimKhann1',icon: FontAwesomeIcons.github,onTap: (){},),
          AnimatedButtonWidget(title: 'LinkedIn',subTitle: 'Muhammad Hashim',icon: FontAwesomeIcons.linkedin,onTap: (){},),
          AnimatedButtonWidget(title: 'Twitter',subTitle: 'Hashimk87136813',icon: FontAwesomeIcons.twitter,onTap: (){},),
          // SocialIcon()

        ],
      ),
    );
  }
}
