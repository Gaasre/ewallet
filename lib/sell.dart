import 'package:flutter/material.dart';
import 'generated.dart';

class Sell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SellState();
  }
}

class _SellState extends State<Sell> {
  var price = '';

  Widget _buildChild() {
    if (price != '') {
      return FlatButton(
          child: Text(
            'Suivant',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Generated(price: price,)),
            );
          });
    }
    return Text('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff272343),
          actions: <Widget>[_buildChild()],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 100),
          color: const Color(0xff272343),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'Veuillez préciser le prix du bien',
                  style: TextStyle(
                      color: const Color(0xffBAE8E8),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: 30, bottom: 100, left: 80, right: 50),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffBAE8E8), width: 1.0))),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          price.toString(),
                          style: TextStyle(
                              color: Color(0xffBAE8E8),
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'DH',
                          style: TextStyle(color: Color(0xffBAE8E8)),
                        )
                      ],
                    ),
                  )),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(51)),
                  child: Container(
                    color: const Color(0xFFF9F6F7),
                    padding: const EdgeInsets.only(
                        top: 70.0, right: 50, left: 50, bottom: 55),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  price += '1';
                                });
                              },
                              child: Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  price += '2';
                                });
                              },
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  price += '3';
                                });
                              },
                              child: Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  price += '4';
                                });
                              },
                              child: Text(
                                '4',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  price += '5';
                                });
                              },
                              child: Text(
                                '5',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  price += '6';
                                });
                              },
                              child: Text(
                                '6',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  price += '7';
                                });
                              },
                              child: Text(
                                '7',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  price += '8';
                                });
                              },
                              child: Text(
                                '8',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                setState(() {
                                  price += '9';
                                });
                              },
                              child: Text(
                                '9',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 32),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  margin: EdgeInsets.only(right: 5),
                                  child: FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        if (price != '') {
                                          price += '0';
                                        }
                                      });
                                    },
                                    child: Text(
                                      '0',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 32),
                                    ),
                                  ),
                                ),
                              ),
                              flex: 4,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child: IconButton(
                                    icon: Icon(Icons.clear),
                                    tooltip: 'Effacer',
                                    onPressed: () {
                                      setState(() {
                                        price = '';
                                      });
                                    },
                                  ),
                                ),
                              ),
                              flex: 2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
