import 'package:flutter/material.dart';
import 'package:login/pagetwo.dart';
import 'package:login/utile.dart/authentication.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AuthenticationApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AuthenticationApp extends StatefulWidget {
  const AuthenticationApp({super.key});

  @override
  State<AuthenticationApp> createState() => _AuthenticationAppState();
}

class _AuthenticationAppState extends State<AuthenticationApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      //   centerTitle: true,
      // ),
      backgroundColor: Color(0xFF192359),
     body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(
              height: 15,
            ),
            Text("Use your Bio Metrics to login your app",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.white60,
              
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton.icon(onPressed: () async{
              bool auth = await Authentication.authentication();
              print('Can auth $auth');
              if(auth){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }
            },
             icon: Icon(Icons.fingerprint),
              label: Text("Authentication")
              ),
            
          ],),
      )),
    );
  }
}