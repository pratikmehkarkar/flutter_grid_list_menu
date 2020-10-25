//Created by Pratik Mehkarkar
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Screen_Two extends StatefulWidget
{
  // This widget is the root of your application.
  Screen_Two({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Screen_TwoState createState() => Screen_TwoState();
}

class Screen_TwoState extends State<Screen_Two>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Menu"),
      ),
      body: mySectionMenu(),
    );
  }
}
Widget mySectionMenu() {
  return GridView.count(crossAxisCount: 2,
    padding: EdgeInsets.all(15),
    crossAxisSpacing: 15,
    mainAxisSpacing: 5,
    children: <Widget>[
      Container(
          color: Colors.deepPurpleAccent,
          child: Stack(
            children: <Widget>[
              Text("Context Menu",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
              Positioned(
                child: my_context_menu(),
                right: 0,
              )
            ],
          )
      ),
      Container(
          color: Colors.deepPurpleAccent,
          child: Stack(
            children: <Widget>[
              Text("Section Menu",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
              Positioned(
                child: my_section_menu(),
                right: 0,
              )
            ],
          )
      ),
      Container(
          color: Colors.deepPurpleAccent,
          child: Stack(
            children: <Widget>[
              Text("Checklist Menu",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
              Positioned(
                child: my_checklist_menu(),
                right: 0,
              )
            ],
          )
      ),
      Container(
          color: Colors.deepPurpleAccent,
          child: Stack(
            children: <Widget>[
              Text("Simple Menu",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20),),
              Positioned(
                child: my_simple_menu(),
                right: 0,
              )
            ],
          )
      ),
    ],
  );
}

Widget my_section_menu() {
  return PopupMenuButton(
    onSelected: (value) {
      Fluttertoast.showToast(
          msg: "You have selected " + value.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
      );
    },
    itemBuilder: (context) {
      var list = List<PopupMenuEntry<Object>>();
      list.add(
        PopupMenuItem(
            value: 1,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                  child: Icon(Icons.print),
                ),
                Text('Print')
              ],
            )));
      list.add(
        PopupMenuItem(
            value: 2,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                  child: Icon(Icons.share),
                ),
                Text('Share')
              ],
            )),
      );
      //PopupMenuDivider is used to make sections in menu
      list.add(
        PopupMenuDivider(
          height: 10,
        ),
      );
      list.add(
        PopupMenuItem(
          value: 3,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                child: Icon(Icons.add_circle),
              ),
              Text('Add')
            ],
          ),
        ),
      );
      return list;
    },
    /*icon: Icon(
      Icons.settings,
      size: 50,
      color: Colors.white,
    ),*/
  );
}

Widget my_context_menu() {
   return PopupMenuButton(
     onSelected: (value) {
       Fluttertoast.showToast(
           msg: "You have selected " + value.toString(),
           toastLength: Toast.LENGTH_SHORT,
           gravity: ToastGravity.BOTTOM,
           timeInSecForIosWeb: 1,
           backgroundColor: Colors.black,
           textColor: Colors.white,
           fontSize: 16.0
       );
     },
     itemBuilder: (context) {
       var list = List<PopupMenuEntry<Object>>();
       list.add(
           PopupMenuItem(
               value: 1,
               child: Row(
                 children: <Widget>[
                   /*Padding(
                     padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                     child: Icon(Icons.print),
                   ),*/
                   Text('Menu Item 1')
                 ],
               )));
       list.add(
         PopupMenuItem(
             value: 2,
             child: Row(
               children: <Widget>[
                 /*Padding(
                   padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                   child: Icon(Icons.share),
                 ),*/
                 Text('Menu Item 2')
               ],
             )),
       );
       list.add(
         PopupMenuItem(
           value: 3,
           child: Row(
             children: <Widget>[
               /*Padding(
                 padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                 child: Icon(Icons.add_circle),
               ),*/
               Text('Menu Item 3')
             ],
           ),
         ),
       );
       return list;
     },
   );
  }

Widget my_checklist_menu() {
  return PopupMenuButton(
    onSelected: (value) {
      Fluttertoast.showToast(
          msg: "You have selected " + value.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
      );
    },
    itemBuilder: (context) {
      var list = List<PopupMenuEntry<Object>>();

      list.add(
        CheckedPopupMenuItem(
          child: Text("Item 1",style: TextStyle(color: Colors.black),
          ),
          value: 1,
          checked: true,
        ),
      );
      list.add(
        CheckedPopupMenuItem(
          child: Text("Item 2",style: TextStyle(color: Colors.black),
          ),
          value: 2,
          //checked: false,
        ),
      );
      list.add(
        CheckedPopupMenuItem(
          child: Text("Item 3",style: TextStyle(color: Colors.black),
          ),
          value: 3,
          //checked: true,
        ),
      );

      return list;
    },
  );
}

Widget my_simple_menu() {
  return PopupMenuButton(
    onSelected: (value) {
      Fluttertoast.showToast(
          msg: "You have selected " + value.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0
      );
    },
    itemBuilder: (context) {
      var list = List<PopupMenuEntry<Object>>();
      list.add(
          PopupMenuItem(
              value: 1,
              child: Row(
                children: <Widget>[
                  /*Padding(
                    padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                    child: Icon(Icons.print),
                  ),*/
                  Text('Simple Item 1')
                ],
              )));
      list.add(
        PopupMenuItem(
            value: 2,
            child: Row(
              children: <Widget>[
                /*Padding(
                  padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                  child: Icon(Icons.share),
                ),*/
                Text('Simple Item 2')
              ],
            )),
      );
      list.add(
        PopupMenuItem(
          value: 3,
          child: Row(
            children: <Widget>[
              /*Padding(
                padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                child: Icon(Icons.add_circle),
              ),*/
              Text('Simple Item 1')
            ],
          ),
        ),
      );
      return list;
    },
  );
}


