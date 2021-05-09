import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Awesom App',
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
  ));

}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lco'),

      ),
      body:Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
         children: [
           UserAccountsDrawerHeader(
             accountName:Text('Dhiraj'), 
             accountEmail:Text('dhiraj@gmail.com'),
             currentAccountPicture:CircleAvatar(
               backgroundImage: NetworkImage("https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
             ),
             
             ),
             ListTile(
               title: Text('Account'),
               subtitle: Text('personal'),
               leading: Icon(Icons.person),
             ),
             ListTile(
               title: Text('Email'),
               subtitle: Text('dhiraj@gmail.com'),
               leading: Icon(Icons.email),
               trailing: Icon(Icons.send),
             ),
             ListTile(
               title: Text('close'),
              onTap: (){
                Navigator.pop(context);
              },
               leading: Icon(Icons.exit_to_app),
             )
             
            
         ], 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.edit),
      ),
    );
  }
}