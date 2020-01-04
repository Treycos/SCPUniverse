import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scp_universe/widgets/common/Reader.dart';

class Entry extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EntryState();
}

class EntryState extends State<Entry> {
  @override
  Widget build(BuildContext context) {
    return Reader(
      readElements: ListView.builder(
        key: PageStorageKey('SCP KEY TESt'),
        itemCount: 16,
        itemBuilder: (_, i) => i % 2 == 0
            ? Container(
                height: 150,
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
              )
            : Text(
                "SCP-1730 bears identifying markings and contains documents to support the claim that SCP-1730 was at one point Foundation Site-13, originally located near Nome, Alaska. This conflicts with current records, which show that Site-13 was a project that, while intended to be constructed in Nome, was scrapped for the larger and more advanced Site-19 and never completed. Flora located on-site have been traced back to those native to the Alaskan region. How SCP-1730 came to be at its current location is unknown.",
              ),
      ),
    );
  }
}
