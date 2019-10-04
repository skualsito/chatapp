import 'package:flutter/material.dart';
import 'atender.dart';
import 'atendidos.dart';
import 'historial.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({ Key key }) : super(key: key);
  @override
  Chats createState() => Chats();
}

class Chats extends State<ChatsPage> with SingleTickerProviderStateMixin {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Atender'),
    Tab(text: 'Atendidos'),
    Tab(text: 'Historial'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Juan Almada"),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          AtenderPage(),
          AtendidosPage(),
          HistorialPage(),
        ],
      ),
    );
  }
}
