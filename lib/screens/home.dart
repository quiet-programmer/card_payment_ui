import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _willFlip = true;
  void _flip() {
    setState(() {
      _willFlip = !_willFlip;
    });
  }
  _cardFlip(context) {
    return Container(
      height: 250,
      child: FlipCard(
        onFlip: _flip,
        speed: 600,
        onFlipDone: (status) {
          print(status);
        },
        direction: FlipDirection.HORIZONTAL,
        front: Card(
          elevation: 5.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 70),
                child: Text(
                  "XXXX XXXX XXXX XXXX",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "Holders Name",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Expiring Date",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        back: Container(
          width: double.infinity,
          child: Card(
            elevation: 5.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("CVV", style: TextStyle(fontSize: 18.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Payment Ui"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              _cardFlip(context),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Type in your Card Details",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Card Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MaterialButton(
                    color: Theme.of(context).accentColor,
                    onPressed: _flip,
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
