import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        elevation: 15.0,
        centerTitle: true,       
       
      ),
      body: Container(
        
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),                                
                ),
                SizedBox(height: 15.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    
                  ),
                  obscureText: true,                                
                ),
                SizedBox(height: 25.0,),
                RaisedButton(
                  child: Text('Sign In',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.bold),),
                  color: Colors.blue,
                  onPressed: (){},
                ),

              ],
            ),
          ),
        ),
      ),
      
    );
  }
}