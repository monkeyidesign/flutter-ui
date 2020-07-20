import 'package:flutter_app_ui/side_drawer.dart';
//import 'package:flutter_app_ui/tabs/bottom/about.dart';
//import 'package:flutter_app_ui/tabs/bottom/info.dart';
//import 'package:flutter_app_ui/tabs/bottom/welcome.dart';

import 'package:flutter_app_ui/tabs/top/tab1.dart';
import 'package:flutter_app_ui/tabs/top/tab2.dart';
import 'package:flutter_app_ui/tabs/top/tab3.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  final List<Widget> _tabs = [Tab1(), Tab2(), Tab3()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('MONEKY iDESIGN'),
            backgroundColor: Colors.blueAccent,

            //backgroundColor: Colors.blueAccent,
//            bottom: TabBar(
//              tabs: [
//                Tab(
//                  text: 'Welcome',
//                  icon: Icon(Icons.home),
//                ),
//                Tab(
//                  text: 'Info',
//                  icon: Icon(Icons.settings),
//                ),
//                Tab(
//                  text: 'About',
//                  icon: Icon(Icons.fastfood),
//                ),
//              ],
//            ),
          ),
          drawer: SideDrawer(),
//          body: TabBarView(
//            children: [
//              Welcome(),
//              Info(),
//              About(),
//            ],
//          ),
        body: _tabs[_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) => setState(() {
            _index = index;
          }),
          //backgroundColor: Theme.of(context).primaryColor,
          items: [
            new BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text('Camera'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('Map'),
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              title: Text('Mail'),
            ),
          ],
        ),

      ),
    );
  }
}
