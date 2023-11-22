import 'package:flutter/material.dart';
import 'package:portfolio_dario/src/ui/views/about_view.dart';
import 'package:portfolio_dario/src/ui/views/contact_view.dart';
import 'package:portfolio_dario/src/ui/views/projects_view.dart';
import 'package:portfolio_dario/src/ui/views/skills_view.dart';
import 'package:portfolio_dario/src/widgets/navBar.dart';
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
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            _about_body(),
            /*Positioned(
              left: 20,
              top: 20,
              child: Container(
                width: 150,
                height: 50,
                color: Colors.amber,
              )
            )*/
            NavBar()
          ],
        ),
      ),
    );
  }
}

class _about_body extends StatelessWidget {
  const _about_body({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        AboutView(),
        skillsView(),
        ProjectsView(),
        ContactView()
      ],
    );
  }
}


class tablet_aboutPage extends StatelessWidget {
  const tablet_aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            _about_body(),
            /*Positioned(
              left: 20,
              top: 20,
              child: Container(
                width: 150,
                height: 50,
                color: Colors.amber,
              )
            )*/
            NavBar()
          ],
        ),
      ),
    );
  }
}

class desktop_aboutPage extends StatelessWidget {
  const desktop_aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            _about_body(),
            /*Positioned(
              left: 20,
              top: 20,
              child: Container(
                width: 150,
                height: 50,
                color: Colors.amber,
              )
            )*/
            NavBar()
          ],
        ),
      ),
    );
  }
}