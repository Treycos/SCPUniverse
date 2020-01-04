import 'package:flutter/material.dart';

import '../MainMenu.dart';

class StandardPage extends StatelessWidget {
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
        
      ),
      drawer: MainMenu(),
      //endDrawer: ArticleNavigation()
    );
  }
}