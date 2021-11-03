import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tablaperiodica/models/periodic_table_element.dart';
import 'package:tablaperiodica/screens/details.dart';

class ElementDetails extends StatelessWidget {
  const ElementDetails({Key? key, required this.element}) : super(key: key);
  final PeriodicTableElement element;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.element.name),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFFfb5607),
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.amber,
                  child: Center(
                    child: Text(
                      this.element.symbol,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF161616),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.element.name,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      this.element.appearance != null
                          ? Details(
                              boldText: "Apariencia: ",
                              text: this.element.appearance!)
                          : Container(),
                      this.element.namedBy != null
                          ? Details(
                              boldText: "Nombrado por: ",
                              text: this.element.namedBy!)
                          : Container(),
                      this.element.category != null
                          ? Details(
                              boldText: "Categoría: ",
                              text: this.element.category!)
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
            this.element.summary != null
                ? Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      this.element.summary!,
                      textAlign: TextAlign.justify,
                      softWrap: true,
                    ),
                  )
                : Container(),
            this.element.electronConfig != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Details(
                        boldText: "Configuración electrónica: ",
                        text: this.element.electronConfig!),
                  )
                : Container(),
            this.element.atomicNumber != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Details(
                        boldText: "Número atómico: ",
                        text: this.element.atomicNumber!.toString()),
                  )
                : Container(),
            this.element.atomicMass != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Details(
                        boldText: "Masa atómica: ",
                        text: this.element.atomicMass!.toString()),
                  )
                : Container(),
            this.element.phase != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Details(
                        boldText: "Estado ordinario: ",
                        text: this.element.phase!),
                  )
                : Container(),
            this.element.melt != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Details(
                        boldText: "Punto de fusión: ",
                        text: this.element.melt.toString() + " K"),
                  )
                : Container(),
            this.element.boil != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Details(
                        boldText: "Punto de ebullición: ",
                        text: this.element.boil.toString() + " K"),
                  )
                : Container(),
            this.element.molarHeat != null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Details(
                        boldText: "Capacidad calorífica molar: ",
                        text: this.element.molarHeat.toString() + " J/(mol·K)"),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
