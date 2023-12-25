import 'package:flutter/material.dart';
import 'package:portfolio_dario/src/widgets/projectTargetdesktop.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/projectTarget.dart';
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
    return mobileProject();
  }
  
  @override
  Widget buildTablet(BuildContext context) {
    return tabletProjects();
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
        width: 150,
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
        width: 150,
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

class _tittle extends StatelessWidget {
  const _tittle({
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
            fontSize:MediaQuery.of(context).size.width<1000?50: 70,
            color: MediaQuery.of(context).size.width<1000?Colors.white: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' trabajos',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width<1000?50: 70,
            color: Color(0xffD7C37B),
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}

class _header extends StatelessWidget {
  const _header({
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
          child: _tittle()),
      ],
    );
  }
}

class _miSlideShow extends StatelessWidget {
  
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
            enlaceDeploy: 'https://bunkapp-deploy.vercel.app/#/',
          ),
          projectTarget(
            imageRoute: 'assets/images/due.png', 
            appName: 'Due', 
            description: 'App diseñada para llevar la cuenta de los diferentes deudores', 
            enlaceGithub: 'https://github.com/DarioAlarcon/Due', 
            enlaceDeploy: 'https://due-deploy.vercel.app/#/',
          ),
          projectTarget(
            imageRoute: 'assets/images/doona.png', 
            appName: 'Dooma', 
            description: 'App diseñada en flutterflow, para llevar a cabo tu manejo de tareas', 
            enlaceGithub: 'https://github.com/DarioAlarcon/Due', 
            enlaceDeploy: 'https://doona.flutterflow.app/',
          )
      ],
    );
  }
}

class _miSlideShowDesktop extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {;
    
    return SlidesShow(
      colorPrim: Color(0xffD7C37B),
      colorSecu: Colors.grey,
      //puntosarriba: true,
      slides: [
        ProjectTargetDesktop(
            appName: 'Bunkapp', 
            imageRoute: 'assets/images/bunkapp.png', 
            description: 'App que sirve de guia para los practicantes o interesados en el karate', 
            enlaceGithub: 'https://github.com/DarioAlarcon/bunkapp', 
            enlaceDeploy: 'https://bunkapp-deploy.vercel.app/#/',
          ),
          ProjectTargetDesktop(
            imageRoute: 'assets/images/due.png', 
            appName: 'Due', 
            description: 'App diseñada para llevar la cuenta de los diferentes deudores', 
            enlaceGithub: 'https://github.com/DarioAlarcon/Due', 
            enlaceDeploy: 'https://due-deploy.vercel.app/#/',
          ),
          ProjectTargetDesktop(
            imageRoute: 'assets/images/doona.png', 
            appName: 'Dooma', 
            description: 'App diseñada en flutterflow, para llevar a cabo tu manejo de tareas', 
            enlaceGithub: 'https://github.com/DarioAlarcon/Due', 
            enlaceDeploy: 'https://doona.flutterflow.app/',
          )
      ],
    );
  }
}

class mobileProject extends StatelessWidget {
  const mobileProject ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height+50,
        child: Column(
          children: [
            _header(),
            Container(
              child: _miSlideShow(),
              width: 390,
              height: 550,
            )
          ]
        ),
      ),
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
            _header(),
            Container(
              child: _miSlideShow(),
              width: 400,
              height: 550,
            )
          ]
        ),
      ),
    );
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
          _tittle(),
          SizedBox(height: 50,),
          Container(
            height: 450,
            width: 550,
            child: _miSlideShowDesktop()
          )
        ],
      ),
   );
  }
}