import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Visitor.dart';
import 'homescreen.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'login.dart';
import 'signupscreen.dart';
import 'authentication.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login App',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: HomeScreen(),
        routes: {
          SignupScreen.routeName: (ctx)=> SignupScreen(),
          LoginScreen.routeName: (ctx)=> LoginScreen(),
          HomeScreen.routeName: (ctx)=> HomeScreen(),
          VisitorScreen.routeName: (ctx)=>VisitorScreen(),

        },
      ),
    );
  }
}