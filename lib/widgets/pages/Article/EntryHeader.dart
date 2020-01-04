import 'package:flutter/material.dart';

class EntryHeader extends StatefulWidget {
  EntryHeader({this.articleProgress});

  final double articleProgress;

  @override
  _EntryHeaderState createState() => _EntryHeaderState();
}

class _EntryHeaderState extends State<EntryHeader> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: true,
      snap: true,
      expandedHeight: 150.0,
      title: Text("SCP"),
      /*flexibleSpace: FlexibleSpaceBar(
                  title: Text("SCP"),
                ),*/
      bottom: ReadProgressIndicator(
        readProgress: widget.articleProgress,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add_circle),
          tooltip: 'Add new entry',
          onPressed: () {},
        ),
      ],
    );
  }
}

class ReadProgressIndicator extends StatelessWidget with PreferredSizeWidget {
  ReadProgressIndicator({this.readProgress});

  final double readProgress;

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: readProgress,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(10);
}
