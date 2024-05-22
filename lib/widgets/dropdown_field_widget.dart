import 'package:flutter/material.dart';

class DropdownFieldWidget extends StatefulWidget {
  List<DropdownMenuEntry<int>> valores;
  final String labelText;
  final void Function(int) handleValorSeleccionado;
  final int? valorPorDefecto;
  final bool enabled;

  DropdownFieldWidget({
    Key? key,
    required this.valores,
    required this.labelText,
    required this.handleValorSeleccionado,
    this.valorPorDefecto,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<DropdownFieldWidget> createState() => _DropdownFieldWidgetState();
}

class _DropdownFieldWidgetState extends State<DropdownFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 25.0),
      child: DropdownMenu<int>(
        enabled: widget.enabled,
        initialSelection: widget.valorPorDefecto,
        expandedInsets: const EdgeInsets.all(1.0),
        onSelected: (value) => widget.handleValorSeleccionado(value!),
        label: Text(widget.labelText),
        dropdownMenuEntries: widget.valores,
      ),
    );
  }
}
