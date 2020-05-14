import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Generated extends StatefulWidget {
  final price;
  Generated({Key key, @required this.price}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _GeneratedState();
  }
}

class _GeneratedState extends State<Generated> {
  Uint8List bytes = Uint8List(200);

  @override
  initState() {
    super.initState();
    _generateBarCode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff272343),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 150),
          color: const Color(0xff272343),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Text(
                    'Code de commande à scanner',
                    style: TextStyle(
                        color: const Color(0xffBAE8E8),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0), // borde width
                  decoration: new BoxDecoration(
                    color: const Color(0xffBAE8E8), // border color
                    shape: BoxShape.rectangle,
                  ),
                  width: 200.0,
                  height: 200.0,
                  child: Image.memory(bytes),
                ),
              ],
            ),
          )),
    );
  }

  Future _generateBarCode() async {
    Uint8List result = await scanner.generateBarCode(widget.price);
    this.setState(() => this.bytes = result);
  }
}
