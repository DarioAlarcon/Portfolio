import 'package:flutter/material.dart';
import '../../widgets/iconlink.dart';
import '../../widgets/responsive_widget.dart';



class ContactView extends ResponsiveWidget {
  const ContactView({super.key});

  
  @override
  Widget buildDesktop(BuildContext context) {
    return const contentDesktop();
  }
  
  @override
  Widget buildMobile(BuildContext context) {
    return const mobileContact();
  }
  
  @override
  Widget buildTablet(BuildContext context) {
    return const tabletContact();
  }
}

class contentDesktop extends StatelessWidget {
  const contentDesktop ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff355264),
      height: MediaQuery.of(context).size.height-120,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: EdgeInsets.only(left: 100.0),
            child: texto(),
          ),
          SizedBox(height: 110,),
          enlaces()
        ]
      ),
    );
  }
}

class enlaces extends StatelessWidget {
  const enlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width<500? 
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const iconLink(
          imageRoute: 'assets/images/gitHub.png',
          label: 'Sigueme', 
          url: 'https://github.com/DarioAlarcon',
        ),
        SizedBox(width:  MediaQuery.of(context).size.width<1000?20:150,),
        const Tooltip(
          message: "darioalarcon832@gmail.com",
          child: iconLink(
            imageRoute: 'assets/images/mail.png',
            label: 'Escribeme', 
            url: 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=CllgCJqXxQWzzzRDQhmDPXsknDNPCSqxrlrqmlCSdVswXHPjgBhlmfLGSxvrcHsqKvWzkPkcnxV',
          ),
        ),
        SizedBox(width:  MediaQuery.of(context).size.width<1000?20:150,),
        const iconLink(
          imageRoute: 'assets/images/linkedin.png',
          label: 'Contactame', 
          url: 'https://www.linkedin.com/in/dario-alarcon-4703341b0/',
        ),
      ],
    )
    :Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const iconLink(
          imageRoute: 'assets/images/gitHub.png',
          label: 'Sigueme', 
          url: 'https://github.com/DarioAlarcon',
        ),
        SizedBox(width:  MediaQuery.of(context).size.width<1000?20:150,),
        const Tooltip(
          message: "darioalarcon832@gmail.com",
          child: iconLink(
            imageRoute: 'assets/images/mail.png',
            label: 'Escribeme', 
            url: 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=CllgCJqXxQWzzzRDQhmDPXsknDNPCSqxrlrqmlCSdVswXHPjgBhlmfLGSxvrcHsqKvWzkPkcnxV',
          ),
        ),
        SizedBox(width:  MediaQuery.of(context).size.width<1000?20:150,),
        const iconLink(
          imageRoute: 'assets/images/linkedin.png',
          label: 'Contactame', 
          url: 'https://www.linkedin.com/in/dario-alarcon-4703341b0/',
        ),
      ],
    );
  }
}

class texto extends StatelessWidget {
  const texto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:  MediaQuery.of(context).size.width<1000?CrossAxisAlignment.center: CrossAxisAlignment.start,
      children: [
        Text(
          'Contáctame',
          style: TextStyle(
            color: const Color(0xffd7c37b),
            fontSize: MediaQuery.of(context).size.width<500?45:70,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          'si quieres que trabajemos juntos',
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width<500?20:35,
            fontWeight: FontWeight.bold
          ),
        )
        
      ],
    );
  }
}

class tabletContact extends StatelessWidget {
  const tabletContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff355264),
      height: MediaQuery.of(context).size.height,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          texto(),
          SizedBox(height: 100,),
          enlaces()
        ],
      ),
    );
  }
}
class mobileContact extends StatelessWidget {
  const mobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff355264),
       height: MediaQuery.of(context).size.height,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          texto(),
          SizedBox(height: 50,),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: enlaces(),
          )
        ],)
    );
  }
}