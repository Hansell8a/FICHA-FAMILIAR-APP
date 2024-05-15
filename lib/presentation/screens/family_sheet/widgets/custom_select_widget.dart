import 'package:flutter/material.dart';
import 'package:flutter_boiler/data/models/options_catalog_model.dart';
import 'package:flutter_boiler/presentation/screens/home/utils/colors.dart';

class CustomSelectWidget extends StatelessWidget {

  const CustomSelectWidget({
    Key? key,
    required this.options,
    required this.initialValue,
    this.onChanged,
    required this.selectedOption,
  }) : super(key: key);

  final List<OptionCatalogModel> options;
  final int initialValue;
  final ValueChanged<int>? onChanged;
  final OptionCatalogModel selectedOption;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: mainText, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: DropdownButton<OptionCatalogModel>(
                  // value: selectedOption,
                  hint: Text(
                    selectedOption.value,
                    style: const TextStyle(
                      fontFamily: "Inter",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  iconSize: 40,
                  isExpanded: true,
                  style: const TextStyle(color: mainText),
                  underline: const SizedBox(),
                  onChanged: (OptionCatalogModel? newValue) {
                    
                      if (onChanged != null) {
                        onChanged!(newValue!.id);
                      }

                  },
                  items: options.map<DropdownMenuItem<OptionCatalogModel>>((OptionCatalogModel option) {
                    return DropdownMenuItem<OptionCatalogModel>(
                      value: option,
                      child: Text(
                        option.value,
                        style: const TextStyle(
                          color: mainText,
                          fontFamily: "Inter",
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
