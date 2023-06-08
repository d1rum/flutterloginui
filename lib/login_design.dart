
import 'package:flutter/material.dart';
import 'package:mylastapp/components/button_component.dart';
import 'package:mylastapp/components/text_field_component.dart';

class LoginDesign extends StatelessWidget {
   LoginDesign({super.key});

  final userNameController = TextEditingController();
  final passwordInputController = TextEditingController();
  void singInUser() {}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children:  [
             const SizedBox(height: 50,),
            Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(height: 50,),

            Text('Welcome Back',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,

            ),),

            const SizedBox(height: 50,),
            TextFieldComponent(controller: userNameController, hintText: "Username", obscureText: false),
            const SizedBox(height: 50,),

            TextFieldComponent(controller: passwordInputController, hintText: "Password", obscureText: true),
            const SizedBox(height: 10,),
            Padding(
                padding:EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password",
                style: TextStyle(
                  color: Colors.grey[600]
                ),)
              ],
            ),),
            const SizedBox(height: 25,),
            ButtonComponent(onTap: singInUser),
            const SizedBox(height: 50,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Or Continue With",
                      style: TextStyle(color: Colors.grey[700]),),
                  ),
                  Expanded(child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  ))
                ],
              ),
            )






          ],
        ),
      ),
    );
  }

}