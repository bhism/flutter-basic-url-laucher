import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class main2 extends StatefulWidget {
  String value;
  main2({this.value});
  @override
  _main2State createState() => _main2State(value);
}

class _main2State extends State<main2> {
  String value;
  _main2State(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        w1(),
        SizedBox(
          height: 30,
        ),
        w2(value:value),
        SizedBox(
          height: 30,
        ),
        w3(),
        SizedBox(
          height: 30,
        ),

        
      ],
      ),
    );
  }
}

class w1 extends StatefulWidget {
  @override
  _w1State createState() => _w1State();
}

class _w1State extends State<w1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child:Image.asset('assets/images/Pro.jpg',
         width: MediaQuery.of(context).size.width,
         ),
      ),
      
    );
  }
}

class w2 extends StatefulWidget {
  String value;
  w2({this.value});
  @override
  _w2State createState() => _w2State(value);
}

class _w2State extends State<w2> {
  var i=0;
  Color x;

  String value;
  _w2State(this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          children: <Widget>[
            Expanded(child:Column(children: <Widget>[
                        Text('$value',
                         style: TextStyle(
                          color: x,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                        ),
                        ),
                        Text('SE 5 33',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        ),
                        Text('IT Engineering',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        ),
    
                      ],
                      ),
            ),
            Expanded(
                        child: Container(child: 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          IconButton(
                            onPressed:(){
                              setState(() {
                                i = i+1;
                                // if(i==0){
                                //   x=Color();
                                // }
                                if(i%2==0){
                                  x =Color(0xFF000000);
                                }
                                else{
                                  x =Color(0xfff44336);
                                }
                              });
                            },
                            icon: Icon(
                              Icons.star,
                              color: x,
                              
                            ),
                          ),
                          w4(i:i),
                      ],
                    ),
                    ),
                  ),
            ],
          ),
        );
      
    
  }
}

class w3 extends StatefulWidget {
  @override
  _w3State createState() => _w3State();
}

class _w3State extends State<w3> {

void launcherUrl(String url) async{
  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'could not open';
  }
}

  @override
  Widget build(BuildContext context) {
    return Container(
              // color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.only(top:12),
                child: Row(children: <Widget>[
                  
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.call,
                        color:Colors.blue ,), 
                        onPressed: null),
                        Text('call',),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.near_me,
                        color:Colors.blue ,), 
                        onPressed:(){
                          launcherUrl("https://www.shahandanchor.com/home/");
                        }
                        ),
                        Text('Route',),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.share,
                        color:Colors.blue ,), 
                        onPressed: null),
                        Text('share',),
                      ],
                    ),
                  ),

                ],
                ),
              ),
    );
  }
}

class w4 extends StatelessWidget {
  var i;
  w4({this.i});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Text('$i'),
    );
  }
}