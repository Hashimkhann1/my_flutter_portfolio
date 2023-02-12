import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/widget/animated_button/animated_button_widget.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          AnimatedButtonWidget(icon: FontAwesomeIcons.facebook,onTap: () {},)
        ],
      ),
    );
  }
}
