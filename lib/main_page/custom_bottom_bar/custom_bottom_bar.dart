import 'package:flutter/material.dart';
import 'package:shiftemtion_app/main_page/history/history.dart';
import 'package:shiftemtion_app/main_page/home/home.dart';
import 'package:shiftemtion_app/main_page/profile/profile.dart';

class CustomBottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CustomBottomBar();
}

class _CustomBottomBar extends State<CustomBottomBar> {
  var _curIndex = 0;
  Widget _content = Home();

  @override
  Widget build(Object context) {
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        body: _content,
        bottomNavigationBar: BottomAppBar(
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Inicio"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                title: Text("Historial"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Perfil"),
              ),
            ],
            currentIndex: _curIndex,
            onTap: (index) {
              setState(() {
                _curIndex = index;
                switch (_curIndex) {
                  case 0:
                    _content = Home();
                    break;
                  case 1:
                    _content = History();
                    break;
                  case 2:
                    _content = Profile();
                    break;
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
