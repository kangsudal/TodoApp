import 'package:flutter/material.dart';
import 'package:todo_app/UI/intray_page.dart';

import 'models/globa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        color: Colors.yellow,
        home: SafeArea(
          child: DefaultTabController(
            length: 4,
            child: new Scaffold(
              body: Stack(
                children: <Widget>[
                  TabBarView(
                    children: [
                      new IntrayPage(),
                      new Container(
                        color: pinkColor,
                      ),
                      new Container(
                        color: Colors.lightGreen,
                      ),
                      new Container(
                        color: Colors.red,
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Intray", style: intrayTitleStyle),
                          Container()
                        ]),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    child: FloatingActionButton(
                      backgroundColor: darkGreyColor,
                      onPressed: () {},
                      child: Icon(Icons.add,size: 60,),
                    ),
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.4,top: 120,),
                  ),
                ],
              ),
              appBar: new TabBar(
                tabs: [
                  Tab(
                    icon: new Icon(Icons.home),
                  ),
                  Tab(
                    icon: new Icon(Icons.rss_feed),
                  ),
                  Tab(
                    icon: new Icon(Icons.perm_identity),
                  ),
                  Tab(
                    icon: new Icon(Icons.settings),
                  )
                ],
                labelColor: Colors.yellow,
                unselectedLabelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(5.0),
                indicatorColor: Colors.blue,
              ),
              backgroundColor: Colors.white,
            ),
          ),
        ));
  }
}
