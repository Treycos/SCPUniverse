import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum ContainementClass { Keter, Euclid, Safe }

class ClassChip extends StatelessWidget {
  ClassChip({this.label, this.path, this.tone});

  final String label;
  final String path;
  final Color tone;

  /*final ContainementClass containement;

  final classInfos = {
    ContainementClass.Keter: {
      "keter",
      "Keter",
      Colors.red
    },
    ContainementClass.Euclid: {
      "euclid",
      "Euclid",
      Colors.orange
    },
    ContainementClass.Safe: {
      "safe",
      "Safe",
      Colors.green
    }
  };*/

  @override
  Widget build(BuildContext context) {
    //final infos = this.classInfos[this.containement];

    return Chip(
      avatar: SvgPicture.asset("assets/classes/${this.path}.svg"),
      label: Text(this.label),
      backgroundColor: this.tone,
    );
  }
}

class Keter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClassChip(label: "Keter", path: "keter", tone: Colors.red);
  }
}

class Euclid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClassChip(label: "Euclid", path: "euclid", tone: Colors.orange);
  }
}

class Safe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClassChip(label: "Safe", path: "safe", tone: Colors.green);
  }
}
