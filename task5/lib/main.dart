import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grey's Anatomy",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grey's Anatomy"),
        centerTitle: true,
      ),
      body: ExpandableTheme(
        data: const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Card1(),
            Card2(),
            Card3(),
          ],
        ),
      ),
    );
  }
}

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            Image.network("https://elcomercio.pe/resizer/9iTnJWa1jLKgPthqyGBxWQftR-c=/1200x900/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/ZUAEUJBHBVAGRKJXYNUUC6C7QE.jpg"),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text("Meredith Grey",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),)),
                collapsed: const Text(
                  "Es la única hija del inestable matrimonio de Ellis y Thatcher Grey. Vio como sus padres se separaban por la aventura que mantenía su madre con Richard Webber. Su padre, al sentirse amenazado, dejó el hogar familiar cuando Meredith tenía cinco años. Poco después, Richard Webber terminó su idilio con Ellis para estar con su esposa, lo que ocasionó que la madre de Meredith se cortara las venas para llamar su atención. Aunque sobrevivió, decidió trasladarse a Massachusetts con su hija y aceptar un trabajo en el Hospital General de Boston. Allí se convirtió en una reconocida cirujana. A pesar de que Ellis quedó embarazada por su romance con Richard, nunca se lo dijo y dio en adopción a su hija, Maggie Pierce.",
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                      Text(
                        "Es la única hija del inestable matrimonio de Ellis y Thatcher Grey. Vio como sus padres se separaban por la aventura que mantenía su madre con Richard Webber. Su padre, al sentirse amenazado, dejó el hogar familiar cuando Meredith tenía cinco años. Poco después, Richard Webber terminó su idilio con Ellis para estar con su esposa, lo que ocasionó que la madre de Meredith se cortara las venas para llamar su atención. Aunque sobrevivió, decidió trasladarse a Massachusetts con su hija y aceptar un trabajo en el Hospital General de Boston. Allí se convirtió en una reconocida cirujana. A pesar de que Ellis quedó embarazada por su romance con Richard, nunca se lo dijo y dio en adopción a su hija, Maggie Pierce.",
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}


class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            Image.network("https://elcomercio.pe/resizer/2ROavMipl9uEbWRkVUtDIBIJeBI=/1200x900/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/GNHHDWLAVVF6VAE4GLHNQ35SOE.jpg"),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text("Derek Shepherd",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),)),
                collapsed: const Text(
                  "Derek Christopher Shepherd nació en una familia de clase media de Nueva York y tiene cuatro hermanas: Nancy, Amelia, Liz y Kate. Su padre fue asesinado cuando él era un adolescente, algo que marcó su personalidad. Se licenció en medicina como sus hermanas Nancy, que es especialista en obstetricia y ginecología, Kate, que psiquiatra, y Amelia, también neurocirujana. Por otro lado, su mejor amigo desde la niñez es el cirujano plástico Mark Sloan, un chico falto de cariño familiar a pesar de proceder de una familia adinerada, así que se sintió como un hijo más en la familia Sheperd.",
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                      Text(
                        "Derek Christopher Shepherd nació en una familia de clase media de Nueva York y tiene cuatro hermanas: Nancy, Amelia, Liz y Kate. Su padre fue asesinado cuando él era un adolescente, algo que marcó su personalidad. Se licenció en medicina como sus hermanas Nancy, que es especialista en obstetricia y ginecología, Kate, que psiquiatra, y Amelia, también neurocirujana. Por otro lado, su mejor amigo desde la niñez es el cirujano plástico Mark Sloan, un chico falto de cariño familiar a pesar de proceder de una familia adinerada, así que se sintió como un hijo más en la familia Sheperd.",
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}


class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            Image.network("https://i.pinimg.com/originals/62/32/fb/6232fbc9197918f005826becbdf5ecc7.jpg"),
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text("Arizona Robbins",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),)),
                collapsed: const Text(
                  "Su papel es interpretado por la actriz Jessica Capshaw. El personaje es una médica que apareció por primera vez en la quinta temporada de Anatomía de Grey como cirujana para convertirse posteriormente en Jefa de Cirugía Pediátrica. Hija de un coronel Daniel Robbins, su familia le ha inculcado los valores del honor y del sacrificio por su país. Su nombre no proviene del estado como todos piensan, sino de un buque de guerra, el USS Arizona donde su abuelo sirvió en Pearl Harbor, y que fue hundido por el ataque de los japoneses, su abuelo murió allí después de salvar la vida a 19 hombres. Su hermano Timothy también soldado murió en Irak por falta de servicio médico. Por ello aprecia el gesto de George O'Malley de irse a la guerra, lo que le lleva a una discusión con Callie.",
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                      Text(
                        "Su papel es interpretado por la actriz Jessica Capshaw. El personaje es una médica que apareció por primera vez en la quinta temporada de Anatomía de Grey como cirujana para convertirse posteriormente en Jefa de Cirugía Pediátrica. Hija de un coronel Daniel Robbins, su familia le ha inculcado los valores del honor y del sacrificio por su país. Su nombre no proviene del estado como todos piensan, sino de un buque de guerra, el USS Arizona donde su abuelo sirvió en Pearl Harbor, y que fue hundido por el ataque de los japoneses, su abuelo murió allí después de salvar la vida a 19 hombres. Su hermano Timothy también soldado murió en Irak por falta de servicio médico. Por ello aprecia el gesto de George O'Malley de irse a la guerra, lo que le lleva a una discusión con Callie.",
                        softWrap: true,
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

