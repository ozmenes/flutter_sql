import 'package:flutter/material.dart';
import 'package:flutter_sql/utils/database.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String,String> newUser = {};
  Future _userFuture;

  @override
  void initState() {
    super.initState();
    _userFuture = getUser();
  }

  getUser()async{
    final _userData = await DbaseProvider.db.getUser();
    return _userData;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: FutureBuilder(
        future: _userFuture,
        builder: (_,userData){
          switch (userData.connectionState){
            case ConnectionState.none:
              return Container();
            case ConnectionState.waiting:
            return Container();
            case ConnectionState.active:
            case ConnectionState.done:
              if(!newUser.containsKey('username')){
                newUser = Map<String,String>.from(userData.data);
              }
              return Container(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Text(
                          newUser['username']
                        ),
                        Text(
                          newUser['password']
                        )
                      ],
                    ),
                  ),
                ),
              );
          }
        },
        
      ),
    );
  }
}