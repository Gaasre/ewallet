import 'package:flutter/material.dart';
import 'package:ewallet/register.dart';
import 'scan.dart';
import 'sell.dart';

void main() => runApp(Register());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreen());
  }
}

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              color: Colors.yellow,
              height: 50,
              width: 50,
            ),
          ),
          Container(
            child: Text(
              'Carrefour',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            margin: const EdgeInsets.only(right: 95, left: 40),
          ),
          Text(
            '-120.00 DH',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff272343),
        padding: const EdgeInsets.only(top: 131.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'crédit disponible',
                style: TextStyle(
                    color: const Color(0xffBAE8E8),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 101.0),
              child: Center(
                child: Text(
                  '500.00 DH',
                  style: TextStyle(
                      color: const Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Material(
                        shape: CircleBorder(),
                        child: Ink(
                          decoration: const ShapeDecoration(
                              color: const Color(0xffBAE8E8),
                              shape: CircleBorder()),
                          child: IconButton(
                            icon: Icon(
                              Icons.send,
                              color: const Color(0x99000000),
                            ),
                            tooltip: 'Payer',
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Pay()),
                              )
                            },
                          ),
                        ),
                      ),
                      Text('Payer',
                          style: TextStyle(color: const Color(0xffBAE8E8))),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Material(
                        shape: CircleBorder(),
                        child: Ink(
                          decoration: const ShapeDecoration(
                              color: const Color(0xffBAE8E8),
                              shape: CircleBorder()),
                          child: IconButton(
                            icon: Icon(
                              Icons.store,
                              color: const Color(0x99000000),
                            ),
                            tooltip: 'Vendre',
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Sell()),
                              )
                            },
                          ),
                        ),
                      ),
                      Text('Vendre',
                          style: TextStyle(color: const Color(0xffBAE8E8))),
                    ],
                  )),
                ],
              ),
              margin: const EdgeInsets.only(bottom: 64.0),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(51),
                    topLeft: Radius.circular(51)),
                child: Container(
                  color: const Color(0xFFF9F6F7),
                  padding: const EdgeInsets.only(top: 29.0, bottom: 25.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'AUJOURD\'HUI',
                        style: TextStyle(
                            color: const Color(0xFFAFAFAF),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              History(),
                              History(),
                              History(),
                              History()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
