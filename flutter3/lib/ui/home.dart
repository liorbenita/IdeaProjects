
import 'package:flutter/material.dart';
import 'package:flutter3/model/Question.dart';

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
        child: Text('fisrt application test'),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: ()=> debugPrint('YO YO yO '),
        child: IconButton(icon: Icon(Icons.access_alarms), onPressed: () {debugPrint('dsadasdlj');},),
      ),
      bottomNavigationBar:BottomNavigationBar(backgroundColor: Colors.deepPurple,items: [
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),
            title: Text('Account')),
        BottomNavigationBarItem(icon: Icon(Icons.add_box),
      title: Text('Add')),
      ],
      onTap: (int index)=> debugPrint('Tapped Item : $index'
      ),


    ));
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

class BizCard extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('BizCard',
           textAlign: TextAlign.center,

         ),
         centerTitle: true


         ,
       ),
       body: Container(
         alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
           _getCard(), _getAvatar()
          ],
        ),
       ),

     );
   }
 }

 Container _getCard(){
  return Container(
    width: 350,
    height: 200,
    margin:EdgeInsets.all(50.0),
    decoration: BoxDecoration(
      color: Colors.pinkAccent,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Lior Benita',
        style: TextStyle(
          fontSize: 20.1,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),),
        Text('is a crazy mofo'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.account_box),
            Text('T: @layor47')
          ],
        )

      ],
    ),
  );
 }
 Container _getAvatar(){
  return Container(
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      border: Border.all(color: Colors.redAccent, width: 1.2),
      image: DecorationImage(image: NetworkImage('https://picsum.photos/id/237/200/300'),
      fit: BoxFit.cover)

   )
  );
 }
 //bizCard Functions
 class Wisdom extends StatefulWidget {
   @override
   _WisdomState createState() => _WisdomState();
 }
 
 class _WisdomState extends State<Wisdom> {
    int _index = 0;
    List quotes = [
      'I come from a land down under',
      'At home drawing pictures of mountain tops',
      'sheets on empty cabern untouched sheets of clay',
      'ohhhh she said i got a little story for you ',
      'he deals the cards in a meditation the other player never suspect',
      'like a virgin just for the very first time ',
      'sometimes i feel like i dont have a partner',
      'I am gonna put you in the worst mode ha ',
      'Baby if you give it to me ill give it to you',
      'I need a dollar a dollar is what i need',
      'Daddy didnt give attention to the fact that mummy didnt care',
      'Jeremy Spoken at class today',
      'row row row your boat gently down the stream',
      'GOALLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLLL',


    ];
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Random Quotes'),
         backgroundColor: Colors.blueGrey,
       ),
       body: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Expanded(
             child: Center(
               child: Container(
                    padding: EdgeInsets.all(20),
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color:Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15.5)

                    ),
                    child: Center(
                      child: Text(quotes[_index % quotes.length],
                        style: TextStyle(
                          color: Colors.white30,
                          fontStyle: FontStyle.italic,
                          fontSize: 15,

                        ),

                      ),
                      

                    )
               ),
             ),
           ),
            Divider(thickness: 2.2,),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  icon: Icon(Icons.send),
                  label: Text('Inspire Me', style: TextStyle(fontSize: 19, color: Colors.white),),
                  color: Colors.greenAccent,
              ),
            ),
            Spacer(),
          ],
           crossAxisAlignment: CrossAxisAlignment.center,
         ),
       )
     );
   }
 
  void _showQuote() {
     // increment our index by one
    setState(() {
      _index += 1;

    });
  }
}

class BillSplitter extends StatefulWidget {
  @override
  _BillSplitterState createState() => _BillSplitterState();
}

class _BillSplitterState extends State<BillSplitter> {
  int _tipPercentage = 0;
  int _persoCounter = 1;
  double _billAmount = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      body: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20.5),
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.orangeAccent.shade400.withOpacity(0.5),
              borderRadius: BorderRadius.circular(12.0)
            ),
            child: Center(
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: <Widget>[
                  Text('Total per person',
                  style: TextStyle(
                    fontSize: 18.0
                  ),),
                  Text('\$ ${calculateTotalPerPerson(calculateTotalTip(_billAmount, _persoCounter, _tipPercentage), _billAmount, _persoCounter)}',

                    style: TextStyle(

                        fontSize: 23.0,

                    ),),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: Colors.orangeAccent.withOpacity(0.0),
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  style: TextStyle(color:Colors.orangeAccent),
                  decoration: InputDecoration(
                    prefixText: "Bill amount: ",
                    prefixIcon: Icon(Icons.attach_money)
                  ),
                  onChanged: (String value){
                    try{
                      _billAmount = double.parse(value);

                    }catch(exception){
                      _billAmount = 0.0;

                    }
                  },
                ),
                Row(
                  children: <Widget>[

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    Text('Split', style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),

                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              if(_persoCounter > 1){
                                _persoCounter--;

                              }else{}
                            });
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.orangeAccent.withOpacity(0.3)

                            ),
                            child: Center(
                              child: Text("-", style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              )),
                            ),
                          ),
                        ),
                        Text('$_persoCounter', style: TextStyle(
                            color: Colors.orangeAccent
                        ),),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _persoCounter++;
                            });
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.orangeAccent.withOpacity(0.3)

                            ),
                            child: Center(
                              child: Text("+", style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              )),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Tip", style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    )),
                    Text("\$${calculateTotalTip(_billAmount, _persoCounter, _tipPercentage)} ", style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('$_tipPercentage%', style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    )
                    ),
                    Slider(
                      min:0,
                      max:100,
                      activeColor: Colors.orangeAccent,
                      inactiveColor: Colors.white30,
                      divisions: 100, // optional
                      value: _tipPercentage.toDouble(), onChanged:(double value){
                      setState(() {
                        _tipPercentage = value.round();
                      });
                    },)

                  ],
                )
              ],
            )
          )
        ],
      ),
      )
    );
  }
  calculateTotalPerPerson(double totalTip, double billAmount, int splitBy){
    var totalPerPerson = (totalTip + billAmount)/splitBy;
    return totalPerPerson.toStringAsFixed(2);
  }
  calculateTotalTip(double billAmount, int splitBy, int tipPercentage){
    double totalTip = 0.0;
    if(billAmount < 0 || billAmount.toString().isEmpty || billAmount == null){
      // nothing
    }else{
      totalTip = (billAmount * tipPercentage)/100;
    }
    return totalTip;
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  List questionBank = [
    Question.name('lokodoko', false),
    Question.name('lokodoko1', false),
    Question.name('lokodoko2', false),
    Question.name('lokodoko3', false),
    Question.name('lokodoko4', false),
    Question.name('lokodoko5', true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('True Citizen'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Image.asset('images/flag.png', height: 180, width: 250,)),
            Container(
              height: 120,
              child: Text(questionBank[1 ].questionText),
            ),

            Spacer(),
          ],

        )
      )
    );
  }
}


 
 
 