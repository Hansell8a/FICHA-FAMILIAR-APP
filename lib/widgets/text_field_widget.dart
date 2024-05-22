import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatefulWidget {
  final String labelText;
  final Icon? textFieldIcon;
  final bool obscureText;
  final bool enabled;
  TextEditingController? texto;
  String textoPermitido;
  int? longitudMaximaTexto;

  TextFieldWidget({
    super.key,
    required this.labelText,
    this.textFieldIcon,
    this.obscureText = false,
    this.enabled = true,
    this.texto,
    this.textoPermitido = '.*',
    this.longitudMaximaTexto,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
      child: TextField(
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(widget.textoPermitido)),
          LengthLimitingTextInputFormatter(widget.longitudMaximaTexto),
        ],
        enabled: widget.enabled,
        controller: widget.texto,
        textAlign: TextAlign.center,
        obscureText: widget.obscureText,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: widget.labelText,
          prefixIcon: widget.textFieldIcon,
        ),
      ),
    );
  }
}
