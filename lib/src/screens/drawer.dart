import 'package:flutter/material.dart';






class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Roberto Aleydon'),
                accountEmail: Text('aleydon@gmail.com'),
                 currentAccountPicture: CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/aleydon.jpg'),
                  ),

                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    child: Text('A'),
                    backgroundColor: Colors.white60,
                    ),
                    CircleAvatar(
                        child: Text('R'),
                    ),
                  ],

                onDetailsPressed: (){},


                decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/fundo.jpg"),
                     fit: BoxFit.cover)
              ),),

             ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onLongPress: (){},
                ),


              Divider(),


              ListTile(
                title: Text('Feed'),
                leading: Icon(Icons.fiber_new),
                onTap: (){
                  Navigator.pushNamed(context, '/feed');
                },
                ),

              ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.category),
                onTap: (){
                  Navigator.pushNamed(context, '/categories');
                },
                ),


              ListTile(
                title: Text('Organizations'),
                leading: Icon(Icons.filter_hdr),
                onLongPress: (){},
                ),


              Divider(),


              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: (){
                  Navigator.pushNamed(context, '/settings');
                },
                ),

              Divider(),

              ListTile(
                title: Text('Support'),
                leading: Icon(Icons.report_problem),
                onLongPress: (){},
                ),


              ListTile(
                title: Text('Close'),
                leading: Icon(Icons.close),
                onTap: (){
                  Navigator.of(context).pop();}
                ),
          ]
        ),
        );
    
  }
    
}