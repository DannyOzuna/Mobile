import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:tablaperiodica/controllers/element_controller.dart';
import 'package:tablaperiodica/screens/about.dart';
import 'package:tablaperiodica/screens/elements_grids.dart';

class Elements extends StatefulWidget {
  const Elements({Key? key}) : super(key: key);

  @override
  _ElementsState createState() => _ElementsState();
}

class _ElementsState extends State<Elements>
    with SingleTickerProviderStateMixin {
  final ElementController c = Get.put(ElementController());
  late TabController _tabController;
  int _value = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    c.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabla periodica'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ElementsGrids(),
          About(),
        ],
      ),
      bottomNavigationBar: TabBar(
        labelColor: Color(0xFF3a86ff),
        unselectedLabelColor: Color(0xFF393939),
        indicatorColor: Color(0xFF3a86ff),
        controller: _tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.grid_view_rounded),
          ),
          Tab(
            icon: Icon(Icons.info_rounded),
          ),
        ],
      ),
    );
  }
}
