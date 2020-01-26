



import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter3/ui/home.dart';

import 'ui/home.dart';

//void main() => runApp(ScaffoldExample());
void main() => runApp(new MaterialApp(
  home: Wisdom(),
theme: ThemeData.dark(),

 routes:  {
   'home': (BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           actions: <Widget>[
             IconButton(icon:Icon( Icons.arrow_downward) ,onPressed:()=> 'fdks;k')
           ],
         ),
         body: Center(

           child: Text('kkk',textDirection: TextDirection.rtl,),

                      ),

     );
   },
   'prehome': (BuildContext context) {
     return ScaffoldExample();
   },
   'afterhome': (BuildContext context) {
     return ScaffoldExample();
   },
   'after1home': (BuildContext context) {
     return BizCard();
   },
   'after2home': (BuildContext context) {
     return Wisdom();
   },
   'after3home': (BuildContext context) {
     return BillSplitter();
   },
 },
  initialRoute: 'after3home',
 ));
