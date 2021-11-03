import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:tablaperiodica/controllers/element_controller.dart';
import 'package:tablaperiodica/models/periodic_table_element.dart';
import 'package:tablaperiodica/screens/element_details.dart';

class ElementsGrids extends StatefulWidget {
  const ElementsGrids({Key? key}) : super(key: key);

  @override
  _ElementsGridsState createState() => _ElementsGridsState();
}

class _ElementsGridsState extends State<ElementsGrids> {
  final ElementController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PeriodicTableElement>>(
      future: c.loadData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return StaggeredGridView.countBuilder(
            crossAxisCount: 3,
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () => Get.to(
                  () => ElementDetails(element: snapshot.data![index]),
                  transition: Transition.downToUp),
              child: new Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                ),
                child: Center(
                  child: Text(
                    snapshot.data![index].symbol,
                    style: TextStyle(
                      color: Color(0xFF161616),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            staggeredTileBuilder: (int index) =>
                StaggeredTile.count(1, index.isEven ? 2 : 1),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          );
        } else {
          return Container();
        }
      },
    );
  }
}
