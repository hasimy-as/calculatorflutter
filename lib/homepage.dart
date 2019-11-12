import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State createState() => new HomepageState();
}

class HomepageState extends State<Homepage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtract() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clearing() {
    setState(() {
      t1.text = '0';
      t2.text = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: new Text('Yurods Calculator'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
            ),
            new Text(
              "$sum",
              style: new TextStyle(
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 50.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.white70,
                  onPressed: addition,
                ),
                new MaterialButton(
                  child: new Text("-"),
                  color: Colors.white70,
                  onPressed: subtract,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("x"),
                  color: Colors.white70,
                  onPressed: multiply,
                ),
                new MaterialButton(
                  child: new Text(":"),
                  color: Colors.white70,
                  onPressed: divide,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  onPressed: clearing,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
