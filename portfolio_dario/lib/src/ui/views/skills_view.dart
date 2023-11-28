import 'package:flutter/material.dart';
import '../../widgets/responsive_widget.dart';
import '../../widgets/skillTarget.dart';

class skillsView extends ResponsiveWidget {
  const skillsView({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return skillsDektop();
  }
  
  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    throw UnimplementedError();
  }
  
  @override
  Widget buildTablet(BuildContext context) {
    return tabletSkills();
  }
}
class skillsDektop extends StatelessWidget {
  const skillsDektop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff355264),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            tittle(),
            dividerLine(),
            targets()
          ],
      ),
    );
  }
}

class dividerLine extends StatelessWidget {
  const dividerLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width*0.9,
      height: 5,
      decoration: BoxDecoration(
         color: Color(0xffD7C37B),
         borderRadius: BorderRadius.all(Radius.circular(10))
      ),
    );
  }
}

class tittle extends StatelessWidget {
  const tittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double size = MediaQuery.of(context).size.width;
    double tamano = size<800? 50:70;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Mis',
          style: TextStyle(
            fontSize: tamano,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' mejores',
          style: TextStyle(
            fontSize: tamano,
            color: Color(0xffD7C37B),
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' habilidades',
          style: TextStyle(
            fontSize: tamano,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}
class targets extends StatelessWidget {
  const targets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 30,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            skilltarge(
              imageRoute: 'assets/images/css.png', 
              tooltipMessage: 'css',
            ),
            SizedBox(width: 70,),
            skilltarge(
              imageRoute: 'assets/images/html.jpg', 
              tooltipMessage: 'html',
            ),
            SizedBox(width: 70,),
            skilltarge(
              imageRoute: 'assets/images/javascript.png', 
              tooltipMessage: 'javascript',
            ),
          ],
        ),
        SizedBox(height: 30,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            skilltarge(
              imageRoute: 'assets/images/dart.png', 
              tooltipMessage: 'dart',
            ),
            SizedBox(width: 70,),
            skilltarge(
              imageRoute: 'assets/images/flutter.png', 
              tooltipMessage: 'flutter',
            ),
            SizedBox(width: 70,),
            skilltarge(
              imageRoute: 'assets/images/git.png', 
              tooltipMessage: 'git',
            ),
          ],
        ),
      ],
    );
  }
}


class tabletSkills extends StatelessWidget {
  const tabletSkills({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff355264),
      height: MediaQuery.of(context).size.height+120,
      child: SingleChildScrollView(
        child: Column(
        children: [
          SizedBox(height: 50,),
          tittle(),
          dividerLine(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  skilltarge(
                imageRoute: 'assets/images/css.png', 
                tooltipMessage: 'css',),
                   skilltarge(
                  imageRoute: 'assets/images/html.jpg', 
                tooltipMessage: 'html',)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  skilltarge(
                  imageRoute: 'assets/images/javascript.png', 
                tooltipMessage: 'javascript',),
                   skilltarge(
                  imageRoute: 'assets/images/dart.png', 
                tooltipMessage: 'dart',)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  skilltarge(
                  imageRoute: 'assets/images/flutter.png', 
                tooltipMessage: 'flutter',),
                   skilltarge(
                  imageRoute: 'assets/images/git.png', 
                tooltipMessage: 'git',)
                ],
              ),
              SizedBox(height: 20,),
            ],
          )
        ],
        ),
      ),
    );
  }
}