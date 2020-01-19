
import 'package:flutter/material.dart';
class ScaffoldExample extends StatelessWidget {
  _tapButton() => debugPrint(
    'hacked'
  );
  _tapAccountButton() => debugPrint(
    'AccountBox'
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "stylish app bar",
          textDirection: TextDirection.ltr,
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent.shade700,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.account_balance), onPressed: ()=>debugPrint('Over Draft')),
          IconButton(icon: Icon(Icons.access_alarms), onPressed: _tapButton),
          IconButton(icon: Icon(Icons.account_box), onPressed: _tapAccountButton)
        ],
      ),
      body: Center(
        child: Text('fisrt application test'),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Center(
//      child: Text("Lior Benita First Pro", textDirection: TextDirection.ltr,)
//    );
    return Material(
      color: Colors.deepPurpleAccent,

      child: Center(
          child: Text(
            'Hello Banany',
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                fontSize: 26.4
            ),
          )
      ),
    );
  }

}