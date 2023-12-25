import 'package:flutter/material.dart';
import 'package:portfolio_dario/src/widgets/projectTargetdesktop.dart';

class viewTest extends StatelessWidget {
  const viewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ProjectTargetDesktop(imageRoute: "assets/images/bunkapp.png", appName: "Bunkap", description: "App que sirve de guia para los practicantes o interesados en el karate", enlaceGithub: "enlaceGithub", enlaceDeploy: "enlaceDeploy"),
      ),
    );
  }
}