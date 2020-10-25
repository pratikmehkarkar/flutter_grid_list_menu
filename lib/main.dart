//Created by Pratik Mehkarkar

import 'package:flutter/material.dart';
import 'menu_widgets/NavigationDrawer.dart';

void main() {
  runApp(MyApp());
}
const List<String> context_menu_choice = <String>[
  "Item 1",
  "Item 2",
  "Item 3"
];
class MyApp extends StatelessWidget
{
  //The root of flutter application
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget
{
  Home_State createState() => Home_State();
}

class Home_State extends State<Home>
{
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  String _selectedchoice;

  void _select(String choice)
  {
    setState(() {
      _selectedchoice = choice;
    });
    showSnackBar(choice);
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      key: _scaffoldkey,
      backgroundColor: Colors.white,
      //Implementing NavBar Widget for Side Menu
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Flutter Guide'),

        actions: <Widget>[
          PopupMenuButton(
            elevation: 0,
            onSelected: _select,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context)
            {
              return context_menu_choice.map((String choice)
              {
                return PopupMenuItem <String>(
                  value: choice,
                  child: Text(choice),
                );
              }
              ).toList();
            },
          )
        ],
      ),
      body: bodyWidget(selection: _selectedchoice,),
    );
  }
  void showSnackBar(String choice)
  {
    final snackBarContent =  SnackBar(
      content: Text('Selected: $choice'),
      action: SnackBarAction(
          label: 'Undo', onPressed: ()
      {
        //undo
      }),
    );
    _scaffoldkey.currentState.showSnackBar(snackBarContent);

  }
}
class bodyWidget extends StatelessWidget
{
  final String _selection;

  const bodyWidget({
    Key key,
    @required String selection,}) : _selection = selection,super(key : key);

  @override
  Widget build(BuildContext context)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _selection != null ?
        Center(child: Text("Selected : $_selection",),):
        Center(child: Text("Welcome Screen",),),
      ],
    );
  }
}



