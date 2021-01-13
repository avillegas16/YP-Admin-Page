import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class AddTime extends StatefulWidget {
  @override
  _AddTimeState createState() => _AddTimeState();
}

class _AddTimeState extends State<AddTime> {


  var _select = ['Please choose a category',"TFKids","TFAdults"];
  var _category= 'Please choose a category';

  var _subselect = ['Please choose a sub category',"Bob Esponja","Brandy y el Sr Bigotes","El Pájaro Loco","Los Padrinos Mágicos","Masha y el Oso"];
  var _show= 'Please choose a sub category';

  var _subsubselect = ['Please choose a sub sub category',"Cuidado donde Pintas","El Sombrero del Millón de Dólares", "Oído Absoluto (I)", "Oído Absoluto (2)"];
  var _title= 'Please choose a sub sub category';


  String _st1 = '';
  String _st2 = '';
  String _st3 = '';
  String _st4 = '';
  String _st5 = '';
  String _st6 = '';
  String _st7 = '';
  String _st8 = '';
  String _st9 = '';
  String _st10 = '';

  String _et1 = '';
  String _et2 = '';
  String _et3 = '';
  String _et4 = '';
  String _et5 = '';
  String _et6 = '';
  String _et7 = '';
  String _et8 = '';
  String _et9 = '';
  String _et10 = '';

  final _st1Controller = TextEditingController();
  final _st2Controller = TextEditingController();
  final _st3Controller = TextEditingController();
  final _st4Controller = TextEditingController();
  final _st5Controller = TextEditingController();
  final _st6Controller = TextEditingController();
  final _st7Controller = TextEditingController();
  final _st8Controller = TextEditingController();
  final _st9Controller = TextEditingController();
  final _st10Controller = TextEditingController();

  final _et1Controller = TextEditingController();
  final _et2Controller = TextEditingController();
  final _et3Controller = TextEditingController();
  final _et4Controller = TextEditingController();
  final _et5Controller = TextEditingController();
  final _et6Controller = TextEditingController();
  final _et7Controller = TextEditingController();
  final _et8Controller = TextEditingController();
  final _et9Controller = TextEditingController();
  final _et10Controller = TextEditingController();


  DatabaseReference _databaseReference = FirebaseDatabase.instance.reference();

  saveTime(BuildContext context) async {

    await _databaseReference.child(_category).child(_show).child(_title).child("questions").set({
      "st1": _st1,
      "st2": _st2,
      "st3": _st3,
      "st4": _st4,
      "st5": _st5,
      "st6": _st6,
      "st7": _st7,
      "st8": _st8,
      "st9": _st9,
      "st10": _st10,

      "et1": _et1,
      "et2": _et2,
      "et3": _et3,
      "et4": _et4,
      "et5": _et5,
      "et6": _et6,
      "et7": _et7,
      "et8": _et8,
      "et9": _et9,
      "et10": _et10,
    });

    navigateToLastScreen(context);

  }

  navigateToLastScreen(context)
  {
    Navigator.of(context).pop();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Add Time",
          style: TextStyle(
            color: Colors.pink[400],
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            DropdownButton(

              items: _select.map((String dropDownStringItem) {
                return DropdownMenuItem(
                    value: dropDownStringItem,
                    child:Text(dropDownStringItem)
                );
              }).toList(),

              onChanged: (String newValueSelected) {

                setState(() {
                  this._category = newValueSelected;

                });
              },
              value: _category,


            ),
            DropdownButton(

              items: _subselect.map((String dropDownStringItem) {
                return DropdownMenuItem(
                    value: dropDownStringItem,
                    child:Text( dropDownStringItem)
                );
              }).toList(),

              onChanged: (String newValueSelected) {

                setState(() {
                  this._show = newValueSelected;

                });
              },
              value: _show,


            ),
            DropdownButton(

              items: _subsubselect.map((String dropDownStringItem) {
                return DropdownMenuItem(
                    value: dropDownStringItem,
                    child:Text( dropDownStringItem)
                );
              }).toList(),

              onChanged: (String newValueSelected) {

                setState(() {
                  this._title = newValueSelected;
                });
              },
              value: _title,
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _st1 = value;
                  });
                },
                controller: _st1Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter start time 1',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et1 = value;
                  });
                },
                controller: _et1Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 1',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _st2 = value;
                  });
                },
                controller: _st2Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter start time 2',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et2 = value;
                  });
                },
                controller: _et2Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 2',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _st3 = value;
                  });
                },
                controller: _st3Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter start time 3',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et3 = value;
                  });
                },
                controller: _et3Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 3',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _st4 = value;
                  });
                },
                controller: _st4Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter start time 4',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et4 = value;
                  });
                },
                controller: _et4Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 4',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _st5 = value;
                  });
                },
                controller: _st5Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter start time 5',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et5 = value;
                  });
                },
                controller: _et5Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 5',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _st6 = value;
                  });
                },
                controller: _st6Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter start time 6',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et6 = value;
                  });
                },
                controller: _et6Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 6',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et7 = value;
                  });
                },
                controller: _et7Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 7',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _st8 = value;
                  });
                },
                controller: _st8Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter start time 8',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et8 = value;
                  });
                },
                controller: _et8Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 8',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _st9 = value;
                  });
                },
                controller: _st9Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter start time 9',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et9 = value;
                  });
                },
                controller: _et9Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 9',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _et10 = value;
                  });
                },
                controller: _et10Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter end time 10',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),


            // save

            Container(
              padding:  EdgeInsets.only(top :20),
              child: RaisedButton(
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                onPressed: (){
                  saveTime(context);
                },
                color: Colors.pink[400],
                child: Text('Save',
                  style: TextStyle(
                      fontSize : 20.0,
                      color: Colors.white),),
              ),
            )
          ],
        ),
      ),

    );
  }
}




