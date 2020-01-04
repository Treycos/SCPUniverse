import 'package:flutter/material.dart';

class CommunityContent extends StatefulWidget {
  CommunityContent({Key key}) : super(key: key);

  @override
  _CommunityContentState createState() => _CommunityContentState();
}

class _CommunityContentState extends State<CommunityContent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Youtube Videos'),
        ),
      ],
    );
  }
}
