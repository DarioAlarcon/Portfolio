import 'package:flutter/material.dart';
import 'package:portfolio_dario/src/widgets/responsive_widget.dart';

class AboutPage extends ResponsiveWidget {

  @override
  Widget buildMobile(BuildContext context) {
    return Mobile_aboutPage();
  }

  @override
  Widget buildTablet(BuildContext context) {
    return tablet_aboutPage();
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return desktop_aboutPage();
  }
  
}


class Mobile_aboutPage extends StatelessWidget {
  const Mobile_aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class tablet_aboutPage extends StatelessWidget {
  const tablet_aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
    );
  }
}

class desktop_aboutPage extends StatelessWidget {
  const desktop_aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}