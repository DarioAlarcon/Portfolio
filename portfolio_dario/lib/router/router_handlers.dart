import 'package:fluro/fluro.dart';
import 'package:portfolio_dario/providers/page_provider.dart';
import 'package:portfolio_dario/src/ui/pages/about_page.dart';
import 'package:provider/provider.dart';

final homeHandler = Handler(
  handlerFunc: (context, params){
    final page = params['page']!.first;
    if(page != '/'){
      final pageProvider = Provider.of<PageProvider>(context!, listen: false);
      pageProvider.createScrollController(page);
      return AboutPage();
    
    }
  }
);