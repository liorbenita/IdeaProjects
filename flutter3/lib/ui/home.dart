
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackbar = SnackBar(
         content: Text('Hello From the Other Side'),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text('Button'),
      ),
    );
  }
}

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: ()=> debugPrint('YO YO yO '),
        child: IconButton(icon: Icon(Icons.access_alarms),),
      ),
      bottomNavigationBar:BottomNavigationBar(backgroundColor: Colors.deepPurple,items: [
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),
            title: Text('Account')),
        BottomNavigationBarItem(icon: Icon(Icons.add_box),
      title: Text('Add')),
      ],
      onTap: (int index)=> debugPrint('Tapped Item : $index'
      ),) ,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(),

//            InkWell(
//              child: Text('Tap me',
//              style: TextStyle(fontSize: 23.5),),
//              onTap: ()=> debugPrint('Tapped'),
//
//           )
          ],

        ),
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