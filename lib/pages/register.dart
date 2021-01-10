import 'package:flutter/material.dart';
import 'package:flutter_sql/models/user.dart';
import 'package:flutter_sql/pages/home.dart';
import 'package:flutter_sql/utils/database.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var username;
  var password;
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
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },                               
                ),
                SizedBox(height: 15.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    
                  ),
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  obscureText: true,                                
                ),
                SizedBox(height: 25.0,),
                RaisedButton(
                  child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.bold),),
                  color: Colors.blue,
                  onPressed: (){
                    var newDBuser = User(username: username, password: password);
                    DbaseProvider.db.newUser(newDBuser);

                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),

              ],
            ),
          ),
        ),
      ),
      
    );
  }
}