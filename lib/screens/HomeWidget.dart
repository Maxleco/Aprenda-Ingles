import 'package:aprenda_ingles/screens/Bichos.dart';
import 'package:aprenda_ingles/screens/Numeros.dart';
import 'package:aprenda_ingles/screens/Vogais.dart';
import 'package:flutter/material.dart';


class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {    
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Inglês"),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          tabs: <Widget>[
            Tab(text: "Bichos"),
            Tab(text: "Números"),
            Tab(text: "Vogais"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Bichos(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}
