
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Volley extends StatefulWidget {
  @override
  _VolleyState createState() => _VolleyState();
}

class _VolleyState extends State<Volley> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();


  String akhirluas,akhirkeliling;
  double luas;
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text(
        "Ok",
        style: TextStyle(color: Colors.redAccent),
      ),
      onPressed: () {
        Navigator.pop(context);
        Navigator.pop(context);
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Volley Hasil"),
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


  TextEditingController _controllerVolley = TextEditingController();
  TextEditingController _controllerTinggi = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20.0),
        child:AppBar(
          title: Center(child: Text('- - Volley - -')),
          backgroundColor: Colors.black,
        ),),    );
  }
}
