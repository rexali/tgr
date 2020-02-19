import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'2Ger',
      theme: ThemeData(
        primarySwatch:Colors.brown,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.local_parking)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.hotel)),
              ],
            ),
            title: Text('2Ger',textAlign: TextAlign.end,style: TextStyle(),),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}