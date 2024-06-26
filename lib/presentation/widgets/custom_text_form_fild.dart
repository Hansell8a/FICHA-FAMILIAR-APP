
import 'package:flutter/material.dart';
import 'package:flutter_boiler/presentation/screens/home/utils/colors.dart';

// ignore: must_be_immutable
class CostomTextFormFild extends StatelessWidget {
  CostomTextFormFild(
      {Key? key,
      required this.hint,
      this.suffixIcon,
      this.onTapSuffixIcon,
      this.obscureText = false,
      this.validator,
      this.onChanged,
      this.onEditingComplete,
      this.controller,
      this.prefixIcon,
      this.filled = false,
      this.enabled = true,
      this.initialValue})
      : super(key: key);
  String hint;
  IconData? prefixIcon;
  IconData? suffixIcon;
  VoidCallback? onTapSuffixIcon;
  bool obscureText;
  bool filled;
  bool enabled;
  String? initialValue;

  TextEditingController? controller;
  Function()? onEditingComplete;

  String? Function(String?)? validator;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        initialValue: initialValue,
        onEditingComplete: onEditingComplete,
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        obscureText: obscureText,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),

          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            // borderSide: const BorderSide(color: outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: primary),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: "Inter",
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: mainText,
            size: 30,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              suffixIcon,
              color: mainText,
              size: 30,
            ),
            onPressed: onTapSuffixIcon,
          ),
          filled: filled,
          enabled: enabled,
        ),
      ),
    );
  }
}
