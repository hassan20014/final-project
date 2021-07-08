import 'package:flutter/material.dart';
import 'homescreen.dart';


class VisitorScreen extends StatefulWidget {
  static const routeName = '/visitor';

  @override
  _VisitorScreenState createState() => _VisitorScreenState();
}

class _VisitorScreenState extends State<VisitorScreen> {
  String dropdownValue='TOUT ANKH AMON' ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:  PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Color(0xFFC95A0F),
            iconTheme: IconThemeData(color: Colors.black),
            flexibleSpace: Align(
              alignment: Alignment(0, 0),
              child: Center(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white,),
                      onPressed: (){
                        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                      },
                    ),
                    Text(
                      'Tour Guide',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: <Widget>[],
            elevation: 4,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/anubus.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: <Widget> [
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    height: 400,
                    width: 360,
                    padding: EdgeInsets.all(16),
                    child: Form(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Museum Name : ',
                                      style: TextStyle(
                                        fontFamily: 'Source Sans Pro',
                                        color:Colors.blueAccent[900],
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'The Egyption Museum',
                                      style: TextStyle(
                                        fontFamily: 'Open Sans',
                                        color: Color(0xFF929191),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Statue Name : ',
                                      style: TextStyle(
                                        fontFamily: 'Source Sans Pro',
                                        color: Colors.blueAccent[900],
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_downward),
                                    iconSize: 24,
                                    elevation: 16,
                                    style: const TextStyle(color: Color(0xFFC95A0F),),

                                    onChanged: (String newValue) {
                                      setState(() {
                                        dropdownValue = newValue;
                                      });
                                    },
                                    items: <String>['TOUT ANKH AMON',
                                      'NEVERTITY',
                                      'KAFRAA',
                                      'KOFO',
                                      'MANKAURAA',
                                      'RAMSIS II',
                                      'RAMSIS III',
                                      'AMONHOTOP',
                                      'AHMOS',
                                      'HATSHEBSOT'
                                    ].map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value+' ',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),

                                ]
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                child: Container(
                                  width: 130,
                                  height: 50,

                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFFC95A0F)
                                    ),
                                    onPressed: (){

                                    },
                                    child: Text('Go',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
      ],
          ),
        ),
      ),
    );

  }
}

