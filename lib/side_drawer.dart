import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
//              UserAccountsDrawerHeader(
//                accountEmail: Text('sam@monkeyidesign.com'),
//                accountName: Text('Samreaksa Ros'),
//                //otherAccountsPictures: [Icon(Icons.home), Icon(Icons.ac_unit)],
//                //onDetailsPressed: () {},
//                currentAccountPicture: CircleAvatar(
//                  backgroundImage: NetworkImage(
//                      'https://www.monkeyidesign.com/images/best-ecommerce-solution.png'),
//                ),

              //),
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.blue,
                    Colors.blueAccent
                  ])
                ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        child: Container(
                          padding: EdgeInsets.all(3.0),
                          width: 100.0,
                          height: 100.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://www.monkeyidesign.com/images/best-ecommerce-solution.png'),
                          ),
                        )
                      )
                    ],
                  ),
                )
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  'home',
                ),
              ),
              ListTile(
                title: Text('Videos'),
                leading: Icon(Icons.personal_video),
                onTap: () => Navigator.pushNamed(
                  context,
                  'videos',
                ),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () => Navigator.pushNamed(
                  context,
                  'settings',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//class CustomListTitle extends StatelessWidget{
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      child: InkWell(
//
//      ),
//    )
//  }
//}
