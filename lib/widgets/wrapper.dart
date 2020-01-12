import 'package:flutter/material.dart';
import 'package:rentals/pages/user_pages/favoritePage.dart';
import 'package:rentals/pages/user_pages/homePage.dart';
import 'package:rentals/pages/user_pages/notificationPage.dart';
import 'package:rentals/pages/user_pages/profilePage.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Offstage(
              offstage: selectedIndex != 0,
              child: TickerMode(
                enabled: selectedIndex == 0,
                child: HomePage(),
              ),
            ),
            Offstage(
              offstage: selectedIndex != 1,
              child: TickerMode(
                enabled: selectedIndex == 1,
                child: FavoritePage(),
              ),
            ),
            Offstage(
              offstage: selectedIndex != 2,
              child: TickerMode(
                enabled: selectedIndex == 2,
                child: NotificationPage(),
              ),
            ),
            Offstage(
              offstage: selectedIndex != 3,
              child: TickerMode(
                enabled: selectedIndex == 3,
                child: ProfilePage(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: selectedIndex != 0 ? Colors.grey[300] : Colors.blue,
                  size: selectedIndex != 0 ? 25 : 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.favorite,
                  color: selectedIndex != 1 ? Colors.grey[300] : Colors.blue,
                  size: selectedIndex != 1 ? 25 : 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                icon: Icon(
                  Icons.notifications,
                  color: selectedIndex != 2 ? Colors.grey[300] : Colors.blue,
                  size: selectedIndex != 2 ? 25 : 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.person,
                  color: selectedIndex != 3 ? Colors.grey[300] : Colors.blue,
                  size: selectedIndex != 3 ? 25 : 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
