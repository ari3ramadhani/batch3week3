import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Bowling extends StatefulWidget {
  @override
  _BowlingState createState() => _BowlingState();
}

class _BowlingState extends State<Bowling> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  String akhirluas,akhirkeliling;
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text(
        "Ok",
        style: TextStyle(color: Colors.redAccent),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Bowling Hasil"),
      content: Text("Luas $akhirluas \nKeliling $akhirkeliling"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }


  TextEditingController _controllerBowling = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child:AppBar(
          title: Center(child: Text('- - Bowling - -')),
          backgroundColor: Colors.black,
        ),),
    );
  }
}
