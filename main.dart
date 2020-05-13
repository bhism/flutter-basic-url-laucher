import 'package:flutter/material.dart';
import './main2.dart';
void main() {
  runApp(ne());
}

class ne extends StatefulWidget {
  @override
  _neState createState() => _neState();
}

class _neState extends State<ne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hi bro',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Hom(),
    );
  }
}

class Hom extends StatefulWidget {
  @override
  _HomState createState() => _HomState();
}

class _HomState extends State<Hom> {

  String value="di";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hi',),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Text(
          'enter your name ',
        ),

        Padding(
          padding: const EdgeInsets.all(15),
          child: TextField(
           autofocus: false,
           keyboardType: TextInputType.emailAddress,
          onChanged:(text) {
             value=text;

          },
          ),
        ),
        SizedBox(height: 30,),
        RaisedButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute
              (builder:(context) => main2(value:value),));
            },
            child: Text('next',),
          ),
      ],
      ),

      

    );
  }
}