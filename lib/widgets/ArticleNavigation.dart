import 'package:flutter/material.dart';

class ArticleNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Rating + 1520'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('SCP - 1230'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Object class - Keter'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Special Containment Procedures'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Description'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Discovery'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ExpansionTile(
            title: Text('Experiments'),
            children: [
              ListTile(
                title: Text('Experiments'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          ListTile(
            title: Text('Addendums'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
