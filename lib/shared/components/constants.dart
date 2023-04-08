//
// import 'navigate.dart';
//
// void signOut(context){
//   CacheHelper.removeData(key: 'Email');
//   CacheHelper.removeData(key: 'user_name');
//   CacheHelper.removeData(key: 'phone');
//   CacheHelper.removeData(key: 'token').then((value) {
//     if (value){
//       navigateAndFinish(context, const LoginView(),);
//     }
//   });
//   LoginCubit.get(context).logOut();
// }
//
// bool isDarkMode= false;
//
// String? userName= CacheHelper.returnData(key: 'user_name');
// String? userEmail= CacheHelper.returnData(key: 'Email');
// String? userPhone= CacheHelper.returnData(key: 'phone');
//
// final User socialUser= FirebaseAuth.instance.currentUser!;
//
