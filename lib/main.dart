import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/test.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_6/screens/registration.dart';
import 'package:flutter_application_6/screens/screen_test.dart';
import 'package:flutter_application_6/screens/result.dart';
void main() {
  runApp(const TestingApp());
}

class TestingApp extends StatelessWidget {
  const TestingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
         '/regist' : (context)=>AuthorizationPage(),
          '/test' : (context)=>Test(),
           '/screen_test' : (context)=>App(),
           '/result' : (context)=>Result(),
           '/testing_app' : (context)=>TestingApp(),          
        },
        initialRoute: '/regist',
      
    );
  }
}