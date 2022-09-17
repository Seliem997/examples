import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  double radius = 3,
  Color backgroundButton = Colors.blue,
  bool isUpperCase = true,
  required VoidCallback function,
  required String textData,
}) {
  return Container(
    width: width,
    child: MaterialButton(
      onPressed: function,
      child: Text(
        isUpperCase ? textData.toUpperCase() : textData,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    decoration: BoxDecoration(
      color: backgroundButton,
      borderRadius: BorderRadius.circular(radius),
    ),
  );
}

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String label,
  required IconData prefixIcn,
  required FormFieldValidator validate,
  Function(dynamic)? onSubm,
  Function(dynamic)? onChang,
  GestureTapCallback? tap,
  bool isPassword= false,
  IconData? suffixIcn,
  VoidCallback? suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubm,
      onChanged: onChang,
      onTap: tap,
      validator: validate,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefixIcn,
        ),
        suffixIcon: suffixIcn!=null ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffixIcn,
          ),
        ) : null ,
        border: OutlineInputBorder(),
      ),
    );
