import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            TextFormField(
              validator: (val) => val.isEmpty ? 'Saisir un mail' : null,
              onChanged: (val) {
                setState(() {
                  email = val;
                });
              }
            ),
            SizedBox(height: 20.0,),
            TextFormField(
              validator: (val) => val.length < 6 ? 'Votre mot de passe devrait contenir au moins 6 caracteres' : null,
              obscureText: true,
              onChanged: (val) {
                setState(() {
                  password = val;
                });
              }
            ),
            SizedBox(height: 20.0,),
            RaisedButton(
              color: Colors.blue[400],
              child: Text(
                'Créer le compte',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {
                if (_formKey.currentState.validate()) {
                  
                }
              }
            )
          ],
        ),
      ),
    );
  }
}
