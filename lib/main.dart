import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'UI/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:Main()
    );
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    var h =MediaQuery.of(context).size.height;// set height to screen size
    var w =MediaQuery.of(context).size.width;// set width to screen size
    var verydarkblue= Color(0xFF011f4b   );
    var darkblue= Color(0xFF03396c   );
    var midBlue= Color(0xFF005b96 );
    var lightBlue= Color(0xFF6497b1  );
    var verylightBlue= Color(0xFF6497b1  );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark
    )); // tukar status bar color to white and tulisan to black

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end  ,
                children: <Widget>[
                  AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      color: verylightBlue,
                    ),
                    duration: Duration(milliseconds: 200),
                    width: w*0.3,
                    height: w*0.3,
                  
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end  ,
                children: <Widget>[
                  AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      color: darkblue,
                    ),
                    duration: Duration(milliseconds: 200),
                    width: w*0.8,
                    height: w*0.8,
                  
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Home()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end  ,
                  children: <Widget>[
                    AnimatedContainer(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: verylightBlue,
                      ),
                      duration: Duration(milliseconds: 200),
                      width: w*0.4,
                      height: w*0.4,
                      child: Center(child: Text('Mulakan',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600),)),
                    ),
                  ],
                ),
              ),
              
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: h*0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Senaman',style: TextStyle(color: midBlue,fontSize: 45,fontWeight: FontWeight.w900),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Pengurusan Stress',style: TextStyle(color: midBlue,fontSize: 20,fontWeight: FontWeight.w600),),
                  ],
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}