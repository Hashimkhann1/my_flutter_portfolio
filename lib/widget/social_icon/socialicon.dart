import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widget/animated_button/animated_button_widget.dart';


class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FaIcon(FontAwesomeIcons.linkedin),
        FaIcon(FontAwesomeIcons.twitter),
        FaIcon(FontAwesomeIcons.facebook),
      ],
    );
  }
}
