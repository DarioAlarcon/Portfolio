import 'package:fluro/fluro.dart';
import 'package:portfolio_dario/router/router_handlers.dart';

class Flurorouter{
  static final FluroRouter router = new FluroRouter();
  static void configureRoutes(){
    //rutas
    router.define('/:page', handler: homeHandler);

    //404
    router.notFoundHandler = homeHandler;

  }
}