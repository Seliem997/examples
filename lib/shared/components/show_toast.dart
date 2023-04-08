//
// import 'package:flutter/material.dart';
//
// void showToast({
//   required String message,
//   required ToastStates state,
// }) {
//   Fluttertoast.showToast(
//     msg: message,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb: 5,
//     backgroundColor: chooseToastColor(state),
//     textColor: Colors.white,
//     fontSize: 16.0
// );
// }
//
// enum ToastStates {success, error, warning}
//
// Color? chooseToastColor(ToastStates state){
//   Color color;
//   switch(state){
//     case ToastStates.success:
//       color = Colors.green;
//       break;
//     case ToastStates.warning:
//       color = Colors.amberAccent;
//       break;
//     case ToastStates.error:
//       color = Colors.red;
//       break;
//   }
//   return color;
// }