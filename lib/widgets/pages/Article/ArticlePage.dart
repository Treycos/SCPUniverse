import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scp_universe/widgets/pages/Article/CommunityContent.dart';
import 'package:scp_universe/widgets/pages/Article/Entry.dart';
import 'package:scp_universe/widgets/pages/Author.dart';

class ArticlePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ArticlePageState();
}

class ArticleTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(
          text: "Author",
          icon: Icon(Icons.person),
        ),
        Tab(
          text: "Entry",
          icon: Icon(Icons.receipt),
        ),
        Tab(
          text: "Community",
          icon: Icon(Icons.lightbulb_outline),
        ),
        Tab(
          text: "Discuss",
          icon: Icon(Icons.forum),
        ),
      ],
    );
  }
}

class ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            Author(),
            Entry(),
            CommunityContent(),
            Text("Not implemented (yet)"),
          ],
        ),
        bottomNavigationBar: ArticleTabBar(),
      ),
    );
  }
}
