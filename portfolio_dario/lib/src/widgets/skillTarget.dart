
import 'package:flutter/material.dart';

class skilltarge extends StatelessWidget {
  const skilltarge({super.key, required this.imageRoute, required this.tooltipMessage});
  final String imageRoute;
  final String tooltipMessage;
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipMessage,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Color(0xff1F3C4F)
      ),
      child: Container(
        height: 220,
        width: 220,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: Image.asset(
          imageRoute
        ),
      ),
    );
  }
}