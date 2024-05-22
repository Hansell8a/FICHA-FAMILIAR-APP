import 'package:app_vacunacion_movil/pages/core/persona_page.dart';
import 'package:app_vacunacion_movil/provider/login_provider.dart';
import 'package:app_vacunacion_movil/routes/page_routes.dart';
import 'package:app_vacunacion_movil/widgets/drawer_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BienvenidaPage extends StatefulWidget {
  static const String routeName = '/bienvenida';

  const BienvenidaPage({Key? key}) : super(key: key);

  @override
  State<BienvenidaPage> createState() => _BienvenidaPageState();
}

class _BienvenidaPageState extends State<BienvenidaPage> {
  void handleNavegacionPersonas() {
    Navigator.pushNamed(context, PageRoutes.personas);
  }

  @override
  Widget build(BuildContext context) {
    LoginProvider loginProvider =
        Provider.of<LoginProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(title: const Text("Expediente Clínico")),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: const Image(
              image: AssetImage('assets/images/logo-mspas.png'),
              height: 150,
            ),
          ),
          const Text(
            'Bienvenido!',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Vacunación Móvil',
              style: TextStyle(
                fontSize: 35,
                color: Colors.blue[700],
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeaderWidget(),
            ListTile(
              title: const Text('Personas'),
              onTap: () => handleNavegacionPersonas(),
            ),
            ListTile(
              title: const Text('Cerrar sesión'),
              onTap: () => loginProvider.cerrarSesion(context),
            ),
          ],
        ),
      ),
    );
  }
}
