import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/responsive_widget.dart';

class AboutView extends ResponsiveWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) {
    return desktopContent();
  }
  
  @override
  Widget buildMobile(BuildContext context) {
    return Scaffold(body: Center(child: Text('pequeño')),);
  }
  
  @override
  Widget buildTablet(BuildContext context) {
    return tabletContent();
  }
}

class desktopContent extends StatelessWidget {
  const desktopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          textDescription(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: profileImage(),
          )
        ],
      ),
    );
  }
}

class profileImage extends StatelessWidget {
  const profileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).size.width<1000? EdgeInsets.only(top: 0) :EdgeInsets.only(top: 80),
      height: 493,
      width: 347,
      decoration: BoxDecoration(
        color: Color(0xffD7C37B),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
    );
  }
}

class textDescription extends StatelessWidget {
  const textDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
            padding: const EdgeInsets.only(left: 90),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff355264),
                  shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                  )  
              ),
              onPressed: ()=>launchUrl(Uri.parse("https://drive.google.com/file/d/1YubhDlJI31KPfTO5OiKhf1wM-feKTVU2/view?usp=drive_link")),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                child: Text(
                  'hoja de vida', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}

class Dariotext extends StatelessWidget {
  const Dariotext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Soy',
          style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' Dario',
          style: TextStyle(
            color: Color(0xffD7C37B),
            fontSize: 70,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' Alarcon',
          style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}

class tabletContent extends StatelessWidget {
  const tabletContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height*0.87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          profileImage(),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
            color: Colors.white,
            ),
            alignment: Alignment.center,
            width: double.infinity,
            height: 40,
            child: Text(
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
            child: Dariotext()
          ),
        ],
      ),
    );
  }
}
//