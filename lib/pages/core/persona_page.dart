import 'package:app_vacunacion_movil/provider/core/persona_provider.dart';
import 'package:app_vacunacion_movil/screens/core/persona/busqueda_persona_screen.dart';
import 'package:app_vacunacion_movil/screens/core/persona/formulario_persona_screen.dart';
import 'package:app_vacunacion_movil/widgets/simple_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class PersonaPage extends StatefulWidget {
  static const String routeName = '/persona';

  PersonaPage({Key? key}) : super(key: key);

  @override
  State<PersonaPage> createState() => _PersonaPageState();
}

class _PersonaPageState extends State<PersonaPage> {
  int selectedIndex = 0;
  final screens = [
    const BusquedaPersonaScreen(),
    FormulaPersonaScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        // Provider.of<VentaProvider>(context, listen: false).cargarVentasDelDia();
      } else if (index == 1) {
        Provider.of<PersonaProvider>(context, listen: false)
            .cargarCatalogosFormularioPersona();
      }
      selectedIndex = index;
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     statusBarColor: Colors.transparent,
  //     statusBarIconBrightness: Brightness.dark,
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(titulo: 'Personas'),
      backgroundColor: Colors.white,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.blue[100],
        elevation: 0,
        iconSize: 25,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_repair_outlined),
            label: BusquedaPersonaScreen.screenName,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_outlined),
            label: FormulaPersonaScreen.screenName,
          ),
        ],
      ),
    );
  }
}
