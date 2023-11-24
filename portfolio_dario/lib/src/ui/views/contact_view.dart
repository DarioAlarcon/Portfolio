import 'package:flutter/material.dart';
import '../../widgets/iconlink.dart';
import '../../widgets/responsive_widget.dart';



class ContactView extends ResponsiveWidget {
  const ContactView({super.key});

  
  @override
  Widget buildDesktop(BuildContext context) {
    return contentDesktop();
  }
  
  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    throw UnimplementedError();
  }
  
  @override
  Widget buildTablet(BuildContext context) {
    return tabletContact();
  }
}

class contentDesktop extends StatelessWidget {
  const contentDesktop ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff355264),
      height: MediaQuery.of(context).size.height-120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconLink(
          imageRoute: 'assets/images/gitHub.png',
          label: 'Sigueme', 
          url: '_',
        ),
        SizedBox(width: 150,),
        iconLink(
          imageRoute: 'assets/images/mail.png',
          label: 'Escribeme', 
          url: 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=CllgCJqXxQWzzzRDQhmDPXsknDNPCSqxrlrqmlCSdVswXHPjgBhlmfLGSxvrcHsqKvWzkPkcnxV',
        ),
        SizedBox(width: 150,),
        iconLink(
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contáctame',
          style: TextStyle(
            color: Color(0xffd7c37b),
            fontSize: 70,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          'si quieres que trabajemos juntos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
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
      color: Color(0xff355264),
      height: MediaQuery.of(context).size.height,
    );
  }
}