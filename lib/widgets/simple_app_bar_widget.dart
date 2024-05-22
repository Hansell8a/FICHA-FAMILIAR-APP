import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final String titulo;
  String? tituloSecundario;

  SimpleAppBarWidget({Key? key, required this.titulo, this.tituloSecundario})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.blue[700],
        ),
        title: Row(
          children: [
            Text(
              titulo,
              style: const TextStyle(
                  fontWeight: FontWeight.w300, color: Colors.black),
            ),
            if (tituloSecundario != null) ...[
              Text(
                tituloSecundario!,
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.blue[700]),
              ),
            ]
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
