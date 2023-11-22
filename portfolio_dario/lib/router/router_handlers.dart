import 'package:fluro/fluro.dart';
import 'package:portfolio_dario/src/ui/pages/about_page.dart';

final homeHandler = Handler(
  handlerFunc: (context, params){

    return AboutPage();
  }
);