import 'package:flutter/material.dart';
import 'package:scp_universe/widgets/pages/Article/ArticlePage.dart';
import 'package:scp_universe/widgets/pages/Author.dart';
import 'package:scp_universe/widgets/pages/Favorites.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(''),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/SCPLogoText3.gif'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        ListTile(
          title: Text('Articles'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ArticlePage()));
          },
        ),
        ListTile(
          title: Text('Favorites'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Favorites()));
          },
        ),
        ListTile(
          title: Text('Authors'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Author()));
          },
        ),
        ListTile(
          title: Text('Tags'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ));
  }
}
