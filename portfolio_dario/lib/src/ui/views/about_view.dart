import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/responsive_widget.dart';

class AboutView extends ResponsiveWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) {
    return const desktopContent();
  }
  
  @override
  Widget buildMobile(BuildContext context) {
    return const mobileContent();
  }
  
  @override
  Widget buildTablet(BuildContext context) {
    return const tabletContent();
  }
}

// ignore: camel_case_types
class desktopContent extends StatelessWidget {
  const desktopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          textDescription(),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: profileImage(),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class profileImage extends StatelessWidget {
  const profileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).size.width<1000? const EdgeInsets.only(top: 0, left: 10, right: 10) :const EdgeInsets.only(top: 80),
      height: 493,
      width: 347,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: const BoxDecoration(
        color: Color(0xffD7C37B),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Image.asset("assets/images/dario.jpg")
    );
  }
}

// ignore: camel_case_types
class textDescription extends StatelessWidget {
  const textDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.only(top: 60, left: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Hola', 
            style: TextStyle(
              color: Color(0xff355264),
              fontSize: 30
            ),
          ),
          SizedBox(height: 30,),
          Dariotext(),
          SizedBox(height: 50,),
          Text(
          "Soy un desarrollador frontend de \nFlutter \n\nDesarrollo de sitios web y \naplicaciones, así como aplicaciones \nmóviles multiplataforma",
            style: TextStyle(
              fontSize: 30
            ),
          ),
          SizedBox(height: 60,),
          Padding(
            padding: EdgeInsets.only(left: 90),
            child: cvButton(color: Color(0xff355264), fontsize: 36, height: 70,),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class cvButton extends StatelessWidget {
  const cvButton({
    super.key, required this.color, required this.fontsize, required this.height,
  });
  final Color color;
  final double fontsize;
  final double height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))
          )  
      ),
      onPressed: ()=>launchUrl(Uri.parse("https://drive.google.com/file/d/1BIGpv2UzBhVZNGhlRXFU-ayzDBdCTgbo/view?usp=sharing")),
      child: Container(
        alignment: Alignment.center,
        height: height,
        child: Text(
          'hoja de vida', 
          style: TextStyle(
            color: Colors.white,
            fontSize: fontsize
          ),
        ),
      )
    );
  }
}

class Dariotext extends StatelessWidget {
  const Dariotext({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    double fontSize = MediaQuery.of(context).size.width<550? 37:70;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Soy',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' Dario',
          style: TextStyle(
            color: const Color(0xffD7C37B),
            fontSize: fontSize,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' Alarcon',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}

// ignore: camel_case_types
class tabletContent extends StatelessWidget {
  const tabletContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const profileImage(),
          const SizedBox(height: 20,),
          Container(
            decoration: const BoxDecoration(
            color: Colors.white,
            ),
            alignment: Alignment.center,
            width: double.infinity,
            height: 40,
            child: const Text(
              'Desarrollador Frontend', 
              style: TextStyle(
                color: Color(0xff355264),
                fontSize: 30
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 124,
            color: Colors.white,
            child: const Dariotext()
          ),
        ],
      ),
    );
  }
}
//

// ignore: camel_case_types
class mobileContent extends StatelessWidget {
  const mobileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
          const profileImage(),
          const SizedBox(height: 20,),
          Container(
            decoration: const BoxDecoration(
            color: Colors.white,
            ),
            alignment: Alignment.center,
            width: double.infinity,
            height: 40,
            child: const Text(
              'Desarrollador Frontend', 
              style: TextStyle(
                color: Color(0xff355264),
                fontSize: 25,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 84,
            color: Colors.white,
            child: const Dariotext()
          ),
        ],
      ),
    );
  }
}