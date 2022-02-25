import 'package:flutter/material.dart';
import 'package:netflix_app/ui/favorites_page.dart';
import 'package:netflix_app/ui/recents_page.dart';
import 'package:netflix_app/ui/search_page.dart';
import 'package:netflix_app/ui/series_page.dart';

import 'commons/constants/constants.dart';

class NavTab extends StatefulWidget {
  NavTab({Key? key}) : super(key: key);

  @override
  State<NavTab> createState() => _NavTabState();
}

class _NavTabState extends State<NavTab> {
  
  int currentTab = 0;
  final List<Widget> screens = [
    SeriesPage(),
    FavoritesPage(),
    RecentsPage(),
    SearchPage()
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = SeriesPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      appBar: AppBar(
        title: Text(
          title(),
          style: TextStyle(
            color: Constants.primaryTextColor,
          ),
        ),
        foregroundColor: Constants.primaryColor,
        backgroundColor: Constants.primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_rounded),
            color: Constants.primaryTextColor,
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Constants.primaryColor,
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 55,
                    onPressed: () {
                      setState(() {
                        currentScreen = SeriesPage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0
                              ? Constants.secondaryColor
                              : Constants.primaryTextColor,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Constants.secondaryColor
                                  : Constants.primaryTextColor),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 55,
                    onPressed: () {
                      setState(() {
                        currentScreen = FavoritesPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: currentTab == 1
                              ? Constants.secondaryColor
                              : Constants.primaryTextColor,
                        ),
                        Text(
                          'Favorites',
                          style: TextStyle(
                              color: currentTab == 1
                                  ? Constants.secondaryColor
                                  : Constants.primaryTextColor),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 55,
                    onPressed: () {
                      setState(() {
                        currentScreen = RecentsPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.autorenew,
                          color: currentTab == 2
                              ? Constants.secondaryColor
                              : Constants.primaryTextColor,
                        ),
                        Text(
                          'Recent',
                          style: TextStyle(
                              color: currentTab == 2
                                  ? Constants.secondaryColor
                                  : Constants.primaryTextColor),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 55,
                    onPressed: () {
                      setState(() {
                        currentScreen = SearchPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: currentTab == 3
                              ? Constants.secondaryColor
                              : Constants.primaryTextColor,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Constants.secondaryColor
                                  : Constants.primaryTextColor),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Constants.primaryColor,
    );
  }


title(){
  switch (currentTab) {
    case 0:
      return 'Home';
      
    case 1:
      return 'Favorites';
      
    case 2:
      return 'Recent';
      
    case 3:
      return 'Search';
      
    default:
  }}
  
}
