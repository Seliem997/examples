import 'package:flutter/material.dart';

import '../shared/components/components.dart';
import '../shared/components/default_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController=TextEditingController();

  var passwordController=TextEditingController();

  var formKey=GlobalKey<FormState>();

  var isPassword= true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                const SizedBox(height: 30,),
                // TextFormField(
                //   controller: emailController,
                //   keyboardType: TextInputType.emailAddress,
                //   onFieldSubmitted: (String value){
                //     print(value);
                //   },
                //   onChanged: (value){
                //     print(value);
                //   },
                //   decoration: InputDecoration(
                //     labelText: 'Enter Email',
                //     prefixIcon: Icon(
                //       Icons.email,
                //     ),
                //     border: OutlineInputBorder(),
                //   ),
                //   validator: (String? value){
                //     if(value!.isEmpty){
                //       return 'Email must not be empty ';
                //     }
                //     return 'null';
                //   },
                // ),
                // SizedBox(height: 20,),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    label: 'Email adress',
                    prefixIcn: Icons.email,
                    validate: (value){
                      if(value.isEmpty){
                        return 'Email must not be empty ';
                      }
                      return null;
                }),
                const SizedBox(height: 20,),
                // TextFormField(
                //   controller: passwordController,
                //   obscureText: true,
                //   keyboardType: TextInputType.visiblePassword,
                //   onFieldSubmitted: (String value){
                //     print(value);
                //   },
                //   onChanged: (value){
                //     print(value);
                //   },
                //   decoration: InputDecoration(
                //     labelText: 'Enter Password',
                //     prefixIcon: Icon(
                //       Icons.lock,
                //     ),
                //     border: OutlineInputBorder(),
                //   ),
                //   validator: (String? value){
                //     if(value!.isEmpty){
                //       return 'Password must not be empty ';
                //     }
                //     return 'null';
                //   },
                // ),
                defaultFormField(
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    label: 'Enter your Password',
                    isPassword: isPassword,
                    prefixIcn: Icons.lock,
                    suffixIcn: isPassword ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: (){
                      setState(() {
                        isPassword=!isPassword;
                      });
                    },
                    validate: (value){
                      if(value.isEmpty){
                        return 'Password must not be empty';
                      }
                      return null;
                    },),
                const SizedBox(height: 30,),
                defaultButton(function: (){
                  if(formKey.currentState!.validate()){
                    print(emailController.text);
                    print(passwordController.text);
                  }
                },
                  textData: 'login',
                ),
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account ?',
                    ),
                    const SizedBox(width: 5,),
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                  ),
                    ),
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
