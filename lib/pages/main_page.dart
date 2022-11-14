//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../helper/nav_drawer.dart';
import '../helper/standard_scafold.dart';
//import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold.of(context).openDrawer();
    return myScaffold(
        const NavigationDrawer(
            selectedIcon: [true, false, false, false, false]),
        Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('images/martin_home_small.jpeg')),
                  borderRadius: BorderRadius.all(Radius.circular(1000.0)),
                  color: Colors.redAccent,
                  border: Border.all(
                      style: BorderStyle.solid, width: 5.0, color: Colors.red)),
            )
          ]),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                Text(
                    'Das erste Automobil mit dem Namen Subaru war der Subaru 360, der ab 1958 mit Zweizylinder-Zweitaktmotor und Hinterradantrieb in Serie gebaut wurde. Weitere Fahrzeuge mit Zweirad-Antrieb (2WD) folgen in den kommenden Jahren. 1966 baute Subaru seinen ersten 4-Zylinder-Boxermotor der Unternehmensgeschichte, der zunächst im Subaru 1000 Verwendung fand. Der Subaru 1000 war das erste Japanische Serienmodell mit Frontantrieb. 1972 schrieb die japanische Elektrizitätsgesellschaft Tohoku Electric Su Company einen Auftrag für ein Automobil mit Allrad-Antrieb aus, um die schneebedeckten Berge Japans sicher erklimmen und dort Wartungsarbeiten an den Stromtrassen durchführen zu können. Um die Vorgaben an Budget und PKW-Format einhalten zu können, baute man das frontangetriebene Coupé Subaru Leone und darauf aufbauend den Kombi Leone Station Wagon 4WD mit zuschaltbarem Allradantrieb und Boxermotor. Subaru erhielt den Auftrag und der Leone wurde ab 1973 in die USA exportiert.Ab 1979 war die weiterentwickelte Version L1800 4WD in der Schweiz verfügbar. Bis heute ist die Schweiz, neben den Hauptmärkten USA und Australien, ein wichtiger Markt für Subaru.Mit einem noch übersichtlichen Modellprogramm wurde mit der Subaru Deutschland GmbH 1980 eine Importzentrale in Bad Hersfeld gegründet, um den deutschen Markt zu erschließen. Im selben Jahr suchte der Jäger Hans Willibald aus Bad Tölz ein geeignetes Auto für Straße, Wald und Flur und kaufte sich den damals in Deutschland noch unbekannten Subaru 1800 4WD. Von der Technik überzeugt, wurde er kurz darauf der erste Subaru-Händler in Deutschland. Als die Kapazitäten am Standort Bad Hersfeld erschöpft waren, kaufte Subaru 1985 ein 55.000 Quadratmeter großes Gelände in Friedberg und verlagerte seinen Sitz dorthin.Nach der Einführung des permanentem Allradantriebs 1987 entwickelt Subaru in den folgenden Jahren sein Konzept des Symmetrical AWD konsequent weiter. Die Marktanteile in Deutschland blieben indes vergleichsweise kleinIn den 1990er Jahren erwarb Subaru die Namensrechte des Blitzen-Benz von Mercedes. Seither wurden mehrere sportliche Sondermodelle des Subaru Legacy produziert. Der Name ist in Japan ein Mythos, die Legacy-Blitzen-Modelle genießen deswegen Kultstatus.')
              ],
            )),
          )
        ]),
        context);

    /*Scaffold(
      drawerDragStartBehavior: DragStartBehavior.down,
      backgroundColor: Colors.transparent,
      drawerScrimColor: Colors.transparent,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        foregroundColor: Colors.red,
        surfaceTintColor: Colors.amber,
        elevation: 0.0,
        backgroundColor: Colors.deepOrangeAccent,

        //removes shadow from expanding side menu
      ),
      drawer: const NavigationDrawer(index: 0),
    );*/
  }
}
