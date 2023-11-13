import 'package:flutter/material.dart';

abstract class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({super.key});

  Widget buildMobile(BuildContext context);
  Widget buildDesktop(BuildContext context);
  Widget buildTablet(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:(context, constraints) {
          if (constraints.maxWidth<=450) {
            return buildMobile(context);
          }else if(constraints.maxWidth<=780){
            return buildTablet(context);
          }else{
            return buildDesktop(context);
          }
      },
    );
  }
}