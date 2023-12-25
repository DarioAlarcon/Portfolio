import 'package:flutter/material.dart';

import '../ui/views/projects_view.dart';


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