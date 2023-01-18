import 'package:flutter/material.dart';
import 'package:portfolio/components/about.dart';
import 'package:portfolio/widget/text_widget.dart';

import '../components/education.dart';


class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems= [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: TextWidget(title: 'Education')),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){}, child: TextWidget(title: 'Skill')),
    ),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(title: 'HMK',),
        centerTitle: false,
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile ? Drawer(
        child: ListView(
          children: navItems,
        ),
      ) : null,
      body: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20.0,
                  runAlignment: WrapAlignment.center,
                  children: [
                    AboutComponent(),
                    EducationComponent()
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
