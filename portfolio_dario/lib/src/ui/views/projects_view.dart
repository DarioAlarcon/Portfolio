import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/responsive_widget.dart';
import '../../widgets/slideshow.dart';

class ProjectsView extends ResponsiveWidget {
  const ProjectsView({super.key});

  
  
  @override
  Widget buildDesktop(BuildContext context) {
    return projectsDesktop();
  }
  
  @override
  Widget buildMobile(BuildContext context) {
    // TODO: implement buildMobile
    throw UnimplementedError();
  }
  
  @override
  Widget buildTablet(BuildContext context) {
    return tabletProjects();
  }
}

class projectsDesktop extends StatelessWidget {
  const projectsDesktop ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(height: 30,),
          tittle(),
          SizedBox(height: 50,),
          targets()
        ],
      ),
   );
  }
}

class targets extends StatelessWidget {
  const targets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          projectTarget(
            appName: 'Bunkapp', 
            imageRoute: 'assets/images/bunkapp.png', 
            description: 'App que sirve de guia para los practicantes o interesados en el karate', 
            enlaceGithub: 'https://github.com/DarioAlarcon/bunkapp', 
            enlaceDeploy: '',
          ),
          SizedBox(width: 70,),
          projectTarget(
            imageRoute: 'assets/images/due.png', 
            appName: 'Due', 
            description: 'App diseñada para llevar la cuenta de los diferentes deudores', 
            enlaceGithub: 'https://github.com/DarioAlarcon/Due', 
            enlaceDeploy: '',
          )
        ],
      ),
    );
  }
}

class projectTarget extends StatelessWidget {
  const projectTarget({super.key, required this.imageRoute, required this.appName, required this.description, required this.enlaceGithub, required this.enlaceDeploy});
 final String enlaceGithub;
 final String enlaceDeploy;
 final String imageRoute;
 final String appName;
 final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 420,
        width: 280,
        decoration: BoxDecoration(
          boxShadow: [
             BoxShadow(
                  color: Colors.grey.withOpacity(0.5), 
                  spreadRadius: 1, 
                  blurRadius: 10,
                  offset: Offset(7, 7), 
                ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color(0xfff2f2f2)
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text(
              appName,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Color(0xff355264)
              ),
            ),
            Container(
              width: 150,
              height: 150,
              child: Image.asset(imageRoute)
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 22,
                color: Color(0xff355264)
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5,),
            codeButton(enlace: enlaceGithub,),
            SizedBox(height: 5,),
            deployButton(enlace: enlaceDeploy,),
          ],
        ),
    );
  }
}

class codeButton extends StatelessWidget {
  const codeButton({super.key, required this.enlace});
  final String enlace;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(35))
        ),  
        backgroundColor: Color(0xffd7c37b),
        shadowColor: const Color.fromARGB(255, 110, 83, 0)
      ),
      onPressed: ()=>launchUrl(Uri.parse(enlace)), 
      child: Container(
        width: 170,
        height: 40,
        alignment: Alignment.center,
        child: Text(
          'ver código',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w700
          ),
        ),
      )
    );
  }
}

class deployButton extends StatelessWidget {
  const deployButton({super.key, required this.enlace});
  final String enlace;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(35))
        ),  
        backgroundColor: Colors.white,
        side: BorderSide(
          color: Color(0xffd7c37b), // Puedes cambiar este color según tus necesidades
          width: 1.0, // Puedes ajustar el ancho del borde según tus necesidades
        ),
        shadowColor: const Color.fromARGB(255, 110, 83, 0)
      ),
      onPressed: ()=>launchUrl(Uri.parse(enlace)), 
      child: Container(
        width: 170,
        height: 40,
        alignment: Alignment.center,
        child: Text(
          'ver proyecto',
          style: TextStyle(
            color: Color(0xffd7c37b),
            fontSize: 25,
            fontWeight: FontWeight.w700
          ),
        ),
      )
    );
  }
}

class tittle extends StatelessWidget {
  const tittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Mis',
          style: TextStyle(
            fontSize: 70,
            color: MediaQuery.of(context).size.width<1000?Colors.white: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' trabajos',
          style: TextStyle(
            fontSize: 70,
            color: Color(0xffD7C37B),
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}

class tabletProjects extends StatelessWidget {
  const tabletProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height+50,
        child: Column(
          children: [
            header(),
            Container(
              child: miSlideShow(),
              width: 400,
              height: 550,
            )
          ]
        ),
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 180,
        decoration: BoxDecoration(
          color: Color(0xff355264),
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))
        ),),
        Padding(
          padding: EdgeInsets.only(top: 70),
          child: tittle()),
      ],
    );
  }
}


class miSlideShow extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {;
    
    return SlidesShow(
      colorPrim: Color(0xffD7C37B),
      colorSecu: Colors.grey,
      //puntosarriba: true,
      slides: [
        projectTarget(
            appName: 'Bunkapp', 
            imageRoute: 'assets/images/bunkapp.png', 
            description: 'App que sirve de guia para los practicantes o interesados en el karate', 
            enlaceGithub: 'https://github.com/DarioAlarcon/bunkapp', 
            enlaceDeploy: '',
          ),
          projectTarget(
            imageRoute: 'assets/images/due.png', 
            appName: 'Due', 
            description: 'App diseñada para llevar la cuenta de los diferentes deudores', 
            enlaceGithub: 'https://github.com/DarioAlarcon/Due', 
            enlaceDeploy: '',
          )
      ],
    );
  }
}