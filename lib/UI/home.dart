import 'package:flutter/material.dart';
import 'package:pengurusan_stress/UI/regang.dart';
import 'package:pengurusan_stress/UI/tips.dart';

class Home extends StatelessWidget {
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
                    Icon(Icons.home,color: midBlue,),
                    SizedBox(width: 10,),
                    Text('Halaman Utama',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),
                  ],
                ),
              ),
              
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: (){
                        if(i==0){
                          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Tips()));
                        } else if(i==1){
                          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Strecth()));
                        }else{
                          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Home()));
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: h*0.4,
                          width: w*0.5,
                          color: Colors.transparent,
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: h*0.1,
                                    width: w*0.5,
                                    
                                  ),
                                  Container(
                                    height: h*0.2,
                                    width: w*0.5,
                                    decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow:[
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0,2),
                                        blurRadius: 2,
                                        spreadRadius: 1
                                      )
                                    ]
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        
                                        i==0?Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text('Tips Pengurusan',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),
                                                Text('Stress',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),

                                              ],
                                            ),
                                          ],
                                        ):
                                        i==1?Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text('Teknik Senaman',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),
                                                Text('Regangan',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),

                                              ],
                                            ),
                                          ],
                                        ):
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text('Pemakanan Rendah',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),
                                                Text('Kalori',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),

                                              ],
                                            ),
                                          ],
                                        )

                                      ],
                                    ),
                                  )
                                ],
                              ),
                              i==0? Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: w*0.4,
                                      child: Image.asset('assets/tips.png')),
                                  ],
                                ),
                              ):
                              i==1? Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: w*0.4,
                                      child: Image.asset('assets/regang.png')),
                                  ],
                                ),
                              ):
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: w*0.4,
                                      child: Image.asset('assets/kalori.png')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: h*0.5,
                  width: w*0.8,
                  color: Colors.transparent,
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            height: h*0.2,
                            width: w*0.8,
                            
                          ),
                          Container(
                            height: h*0.3,
                            width: w*0.8,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0,2),
                                blurRadius: 2,
                                spreadRadius: 1
                              )
                            ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text('Teknik Senaman ',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),
                                      Text('Harian',style: TextStyle(color: midBlue,fontSize: 18,fontWeight: FontWeight.w900),),

                                    ],
                                  ),
                                ],
                              )

                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: w*0.6,
                              child: Image.asset('assets/harian.png')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
      
    );
  }
}