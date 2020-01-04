import 'package:flutter/material.dart';
import './widgets/MainMenu.dart';
import './widgets/ArticleNavigation.dart';

void main() => runApp(SCPUniverse());

class SCPUniverse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'SCP Universe',
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: SCPHome());
  }
}

class SCPHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SCP Universe'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Image.network("https://i.redd.it/ziebrv79sz741.png"),
      ),
      drawer: MainMenu(),
      endDrawer: ArticleNavigation(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Favorite',
        child: Icon(Icons.star),
      ),
    );
  }
}

class SeriesList extends StatelessWidget {
  //final _series = <String>[];

  @override
  Widget build(BuildContext context) {
    return null;
  }
}
