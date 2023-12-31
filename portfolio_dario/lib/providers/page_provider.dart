import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;


class PageProvider extends ChangeNotifier{

  PageController scrollController = new PageController();

  List<String> _pages = ['About','Skills', 'Projects', 'Contact'];
  int _currentIndex = 0;

  createScrollController(String routeName){
    this.scrollController = new PageController(initialPage: getPageIndex(routeName));

    this.scrollController.addListener(() {
      final index = (this.scrollController.page ?? 0).round();
      if (index != _currentIndex){
        html.window.history.pushState(null, 'none', '#/${_pages[index]}');
        _currentIndex = index;
      }
    });
  }

  int getPageIndex(String routeName){
    return (_pages.indexOf(routeName)==-1)?
                  0 :
                  _pages.indexOf(routeName);
    
  }

  String getCurrentIndex(){
    return _pages[_currentIndex];
  }

  goTo(int index){

   scrollController.animateToPage(
      index, 
      duration: Duration(milliseconds: 300), 
      curve: Curves.easeOut
    );
  }

}