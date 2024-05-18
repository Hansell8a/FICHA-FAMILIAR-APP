import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boiler/data/models/options_catalog_model.dart';

class CustomSelectWidget extends StatelessWidget {
  const CustomSelectWidget({
    Key? key,
    required this.options,
    required this.initialValue,
    this.onChanged,
    this.title,
    required this.selectedOption,
    this.isRequired = false,
  }) : super(key: key);

  final List<OptionCatalogModel> options;
  final int initialValue;
  final ValueChanged<int>? onChanged;
  final String? title;
  final OptionCatalogModel selectedOption;
  final bool isRequired; // Nuevo atributo para indicar si el campo es requerido

  @override
  Widget build(BuildContext context) {
    List<String> optionValues = options.map((option) => option.value).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) // Verifica si se proporcionó un título
            Row(
              children: [
                Text(
                  title!, // Utiliza el título proporcionado
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                if (isRequired)
                  const Text(
                    '*', // Muestra un asterisco si el campo es requerido
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          DropdownSearch<String>(
            items: optionValues,
            popupProps: const PopupProps.menu(
              showSearchBox: true,
              title: Text('Seleccione una opción'),
            ),
            onChanged: (String? selectedValue) {
              if (onChanged != null) {
                int selectedIndex = options
                    .indexWhere((option) => option.value == selectedValue);
                onChanged!(options[selectedIndex].id);
              }
            },
            selectedItem: selectedOption.value,
          ),
        ],
      ),
    );
  }
}
