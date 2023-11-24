import 'package:flutter/material.dart';
import 'package:portfolio_dario/providers/page_provider.dart';
import 'package:portfolio_dario/src/ui/views/about_view.dart';
import 'package:portfolio_dario/src/ui/views/contact_view.dart';
import 'package:portfolio_dario/src/ui/views/projects_view.dart';
import 'package:portfolio_dario/src/ui/views/skills_view.dart';
import 'package:portfolio_dario/src/widgets/navBar.dart';
import 'package:portfolio_dario/src/widgets/responsive_widget.dart';
import 'package:provider/provider.dart';

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
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrollController,
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
            Container(width: 50,height: 100,color: Colors.red,),
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
            Container(
              margin: EdgeInsets.only(left: 5, top: 5),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xff355264),
              ),  
            ),
            NavBar()
          ],
        ),
      ),
    );
  }
}