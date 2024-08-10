import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ProfileScreen extends StatefulWidget{

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
var username="";

@override
  void initState() {
  getValueFromSharedPreference();
    super.initState();
  }
 @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Profile",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color:Colors.white),),
     ),
     body: Container(width: double.infinity,
       height: double.infinity,

       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
         Icon(Icons.account_circle,size: 100,color: Colors.red,),
           SizedBox(height: 21,),
           Text("Welcome $username")

         ],
       ),
     ),
   );
  }

  void getValueFromSharedPreference() async{
  var pref= await SharedPreferences.getInstance();
  var getName=pref.getString("name");
  username=getName!=null ? getName:"userName";
  }
}