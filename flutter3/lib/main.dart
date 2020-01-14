

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter3/ui/home.dart';

//void main() => runApp(ScaffoldExample());
void main() => runApp(new MaterialApp(
  home: ScaffoldExample(),
theme: ThemeData.dark(),

 routes:  {
   'home': (BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           actions: <Widget>[
             IconButton(icon:Icon( Icons.arrow_downward) ,onPressed:()=> 'learnHowtochangeRoute ')
           ],
         ),
         body: Center(

           child: Text('kkk',textDirection: TextDirection.rtl,),

                      ),

     );
   },
   'prehome': (BuildContext context) {
     return Home();
   },
 },
  initialRoute: 'prehome',
 ));
