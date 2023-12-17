
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class iconLink extends HookConsumerWidget {
  const iconLink ({super.key, required this.imageRoute, required this.label, required this.url});
  final String imageRoute;
  final String label;
  final String url;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textColor = useState<Color>(Colors.transparent);
    return MediaQuery.of(context).size.width<500?
    MouseRegion(
      onEnter:(value){
          textColor.value = Color.fromARGB(255, 60, 97, 120);
      },
      onExit: (value){
          textColor.value =Colors.transparent;
      },
      child: GestureDetector(
        onTap: ()=>launchUrl(Uri.parse(url)),
        child: Container(
          decoration: BoxDecoration(
            color: textColor.value,
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.width<500?120: 150,
                width: MediaQuery.of(context).size.width<500?120: 150,
                child: Image.asset(
                  imageRoute
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                ),
              )
            ],
          ),
        ),
      ),
    ) 
    :MouseRegion(
      onEnter:(value){
          textColor.value = Color.fromARGB(255, 60, 97, 120);
      },
      onExit: (value){
          textColor.value =Colors.transparent;
      },
      child: GestureDetector(
        onTap: ()=>launchUrl(Uri.parse(url)),
        child: Container(
          decoration: BoxDecoration(
            color: textColor.value,
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  imageRoute
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
