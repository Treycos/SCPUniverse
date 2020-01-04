import 'package:flutter/material.dart';

import 'ClassChip.dart';

class Reader extends StatefulWidget {
  Reader({this.readElements, this.readHeader, Key key}) : super(key: key);

  final ScrollView readElements;
  final Widget readHeader;

  @override
  _ReaderState createState() => _ReaderState();
}

class _ReaderState extends State<Reader> {
  double readProgress = .0;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 150.0,
            title: Row(
              children: <Widget>[Keter(), Euclid(), Safe()],
            ),
            flexibleSpace: FlexibleSpaceBar(
                /*background: Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: Text('AB'),
                ),
                label: Text('Aaron Burr'),
              ),*/
                ),
            bottom: SizeableProgressIndicator(
              progressValue: readProgress,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.add_circle),
                tooltip: 'Add new entry',
                onPressed: () {},
              ),
            ],
          ),
        ];
      },
      body: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollEvent) {
          setState(() {
            readProgress = scrollEvent.metrics.pixels /
                scrollEvent.metrics.maxScrollExtent;
          });
          //print(scrollEvent.metrics.maxScrollExtent);
          return;
        },
        child: widget.readElements,
      ),
    );
  }
}

class SizeableProgressIndicator extends StatelessWidget
    with PreferredSizeWidget {
  SizeableProgressIndicator({this.progressValue});

  final double progressValue;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progressValue,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(6);
}
