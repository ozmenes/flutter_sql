import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
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
                  child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.bold),),
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