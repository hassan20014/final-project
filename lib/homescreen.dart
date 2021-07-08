import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'login.dart';
import 'Visitor.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),

    );
  }
}

class HomeScreen extends StatefulWidget{
  static const routeName = '/home';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  Animation animation;
  AnimationController controller;
  @override
  void initState(){
    super.initState();
    controller= AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    animation=CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();

    controller.addListener(() {
      setState(() {});
      print(animation.value);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.only(top:130.0, bottom: 8.0,right: 8.0,left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/images/anubus1.png',
                      height: animation.value*300,
                    ),

                  ),
                ),
                Center(
                  child: TyperAnimatedTextKit(
                    text:['Tour Guide'],
                    textStyle: TextStyle(
                        color: Colors.white54,
                        fontSize: 50,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),

                    ),
                  ),
                  child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 30),),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
                SizedBox(
                  height: 13,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),

                  child: Text('visitor',style: TextStyle(color: Colors.white,fontSize: 30),),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VisitorScreen()),
                    );
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
