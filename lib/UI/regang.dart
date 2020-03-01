import 'package:flutter/material.dart';

class Strecth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h =MediaQuery.of(context).size.height;// set height to screen size
    var w =MediaQuery.of(context).size.width;// set width to screen size
    var verydarkblue= Color(0xFF011f4b   );
    var darkblue= Color(0xFF03396c   );
    var midBlue= Color(0xFF005b96 );
    var lightBlue= Color(0xFF6497b1  );
    var verylightBlue= Color(0xFF6497b1  );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height:h*0.05),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.directions_run,color: midBlue,),
                    SizedBox(width: 10,),
                    Text('Teknik Senaman Regangan',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),
                  ],
                ),
              ),
             
            ],
          ),
          
        ],
      ),
      
    );
  }
}