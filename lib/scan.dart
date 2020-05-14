import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class Pay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PayState();
  }
}

class _PayState extends State<Pay> {
  String barcode = '';
  Uint8List bytes = Uint8List(200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff272343),
      ),
      body: Container(
          color: const Color(0xff272343),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Pending(),
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(50.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffBAE8E8)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: FlatButton.icon(
                      color: const Color(0xff272343),
                      textColor: Colors.white,
                      icon: Icon(Icons.camera), //`Icon` to display
                      label: Text(
                        'Scanner le code',
                        style: new TextStyle(fontSize: 14),
                      ), //`Text` to display
                      onPressed: _scan,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 25.0),
                    child: Text(
                      barcode,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ))
              ],
            ),
          )),
    );
  }

  Future _scan() async {
    String barcode = await scanner.scan();
    setState(() => this.barcode = barcode);
  }
}

class Pending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0), // borde width
      decoration: new BoxDecoration(
        color: const Color(0xffBAE8E8), // border color
        shape: BoxShape.circle,
      ),
      width: 200.0,
      height: 200.0,
      child:
          CircleAvatar(backgroundImage: ExactAssetImage('assets/qrcode.png')),
    );
  }
}
