import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio_dario/providers/page_provider.dart';
import 'package:provider/provider.dart';

import '../animations/entryAnimatio.dart';

class NavBarModel extends ChangeNotifier {
  List<String> titles = ['About', 'Skills', 'Projects', 'Contact'];
  String? hoveredTitle;

  void setHoveredTitle(String? title) {
    hoveredTitle = title;
    notifyListeners();
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<double> iconAnimation;

  double navbarsize = 250.0;

  bool isSideNavOpen = false;

  NavBarModel navBarModel = NavBarModel();

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300)
    );
    iconAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: navbarsize,
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            left: isSideNavOpen? 0.0: -navbarsize,
            child: AnimatedOpacity(
              opacity: isSideNavOpen? 1.0:0.0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
                height:  MediaQuery.of(context).size.height,
                width: navbarsize,
                decoration: BoxDecoration(
                   boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(5, 5),
                  blurRadius: 10,
                ),
              ],
                  color: Color(0xff355269),
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.elliptical(isSideNavOpen? 0.0:
                      navbarsize, MediaQuery.of(context).size.height/2
                    )
                  )
                ),
                child: SizedBox(
                  child: ListenableBuilder(
                    listenable: navBarModel, 
                    builder: (context, child){
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          optionsNavBar(navBarModel: navBarModel, navbarsize: navbarsize, isSideNavOpen: isSideNavOpen, title: "About", onpressed: ()=>pageProvider.goTo(0)),
                          optionsNavBar(navBarModel: navBarModel, navbarsize: navbarsize, isSideNavOpen: isSideNavOpen, title: "Skills", onpressed: ()=>pageProvider.goTo(1)),
                          optionsNavBar(navBarModel: navBarModel, navbarsize: navbarsize, isSideNavOpen: isSideNavOpen, title: "Projects", onpressed: ()=>pageProvider.goTo(2)),
                          optionsNavBar(navBarModel: navBarModel, navbarsize: navbarsize, isSideNavOpen: isSideNavOpen, title: "Contact", onpressed: ()=>pageProvider.goTo(3)),
                        ]
                      );
                    }),
                ),
              ),
            ),
          ),
    
          SizedBox(
            height: 50.0,
            width: 50.0,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  setState(() {
                    isSideNavOpen = !isSideNavOpen;
            
                    if (isSideNavOpen) {
                      animationController.forward();
                    }else{
                      animationController.reverse();
                    }
                  });
                },
                child: Center(
                  child: AnimatedIcon(
                    progress: iconAnimation,
                    icon: AnimatedIcons.menu_close,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class optionsNavBar extends StatelessWidget {
  const optionsNavBar({
    super.key,
    required this.navBarModel,
    required this.navbarsize,
    required this.isSideNavOpen, required this.title, required this.onpressed,
  });
  final Function onpressed;
  final String title;
  final NavBarModel navBarModel;
  final double navbarsize;
  final bool isSideNavOpen;

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);
    return MouseRegion(
      onEnter: (event) {
        navBarModel.setHoveredTitle(title);
        print('entro');
      },
      onExit: (event) {
        navBarModel.setHoveredTitle(null);
        print('salio');
      },
      child: GestureDetector(
        onTap: ()=>onpressed(),
        child: SizedBox(
          width: navbarsize-70,
          child: EntryAnimation(
            delay: navBarModel.titles.indexOf(title)*100,
            isTriggered: isSideNavOpen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: navBarModel.hoveredTitle == null 
                    ? TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500
                    )
                    : navBarModel.hoveredTitle== title
                    ? TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500
                    ):TextStyle(
                        color: Colors.white60,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500
                    )
                    ,
                  child: Text(title)
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 3.0,
                  width:  pageProvider.getCurrentIndex()== title? navbarsize-70:
                  navBarModel.hoveredTitle == title? navbarsize-70: 0.0,
                  margin: const EdgeInsets.only(
                    top: 5.0, bottom: 30.0
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

