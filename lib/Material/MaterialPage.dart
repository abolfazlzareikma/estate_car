import 'package:flutter/material.dart';



class MaterialPages extends StatefulWidget {
  const MaterialPages({Key key}) : super(key: key);

  @override
  _MaterialPagesState createState() => _MaterialPagesState();
}

class _MaterialPagesState extends State<MaterialPages> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2 , vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: [
          new TabBar(
            controller: tabController,
            indicatorColor: Colors.purple,
            labelColor: Colors.purple,
            tabs: [
              new Tab(
                child: new Text('estate'),
              ),
              new Tab(
                child: new Text('shoes'),
              ),
            ],
          ),
  new Container(
    height: MediaQuery.of(context).size.height - 50,
    width: double.infinity,
    child: new TabBarView(
  controller: tabController,
  children: [
  new Container(color: Colors.purple),
  new Container(color: Colors.amber),
  ],
    ),
  ),
        ],
      ),
    );

  }
}
