//Created by Pratik Mehkarkar

//Created by Pratik Mehkarkar


import 'package:cs481_lab_4/menu_widgets/screen_context_menu.dart';
import 'package:cs481_lab_4/menu_widgets/screen_grid_list.dart';
import 'package:cs481_lab_4/menu_widgets/screen_simple_list.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_gallery/l10n/gallery_localizations.dart';

class NavigationDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    //NavigationDrawer is a stateless widget which will return a special widget called Drawer.
    //Widget Drawer contains Basic ListView
    return Drawer(

      //This basic list view contains all the links where we have navigate throughout the app by usig side/navigation menu
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          //The DrawerHeader is the top widget of our side navigation menu
          DrawerHeader(
            child: Text('Side Menu',style: TextStyle(color: Colors.white,fontSize: 25),
            ),
            decoration: BoxDecoration(
                //color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/nav.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text('Menu'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_Two()));
            },
          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Grid List'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_Three()));
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('List'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Screen_Four()));
            },
          ),
        ],
      ),
    );
  }

}


