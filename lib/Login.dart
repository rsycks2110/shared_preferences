import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefernces/main.dart';


class LoginPage extends StatelessWidget{
  var nameController=TextEditingController();
  var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.white,fontSize: 20),)),
      ),
      body: Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              label: Text("Name"),
              hintText: "Enter your Name Here :",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25)
              )
            ),
          ),
          SizedBox(height: 21,),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              label: Text("Password"),
              hintText: "Enter You Password Here :",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25)
              )
            ),
            
          ),
          SizedBox(height: 21,),
          ElevatedButton(onPressed: () async {
            var userName=nameController.text.toString();
            var userPassword=passwordController.text.toString();
            var sharedPref= await SharedPreferences.getInstance();
            sharedPref.setString("name", userName);
            sharedPref.setString("password", userPassword);

          }, child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),))
        ],
      ),
    ),
    );
  }
}