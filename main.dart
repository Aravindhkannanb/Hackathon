import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void hello() {
  runApp(new MaterialApp(
    home: new onpress(),
  ));
}

class onpress extends StatefulWidget {
  const onpress({Key? key}) : super(key: key);

  @override
  State<onpress> createState() => _onpressState();
}

class _onpressState extends State<onpress> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('aravindh'),
    );
  }
}

void main() {
  runApp(new MaterialApp(home: new todaymenu()));
}

class todaymenu extends StatefulWidget {
  const todaymenu({Key? key}) : super(key: key);

  @override
  State<todaymenu> createState() => _todaymenuState();
}

class _todaymenuState extends State<todaymenu> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: Text('Report Water Leakage',
                style: TextStyle(color: Colors.white, fontSize: 18.0)),
            centerTitle: true),
        body: Center(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Add your Description",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 60, left: 30, right: 30),
                child: new TextFormField(
                  minLines: 2,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Enter a message Here',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                )),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: ElevatedButton(
                  child: Text("Save Location", style: TextStyle(fontSize: 25)),
                  onPressed: hello),
            )
          ],
        )));
  }
}
