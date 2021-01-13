import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
// import 'Textfieldd.dart';



class AddAnswer extends StatefulWidget {
  @override
  _AddAnswerState createState() => _AddAnswerState();
}

class _AddAnswerState extends State<AddAnswer> {


  var _select = ['Please choose a category',"TFKids","TFAdults",];
  var _category= 'Please choose a category';

  var _subselect = ['Please choose a sub category',"Bob Esponja","Masha y el Oso","Los Padrinos Magicos"];
  var _show= 'Please choose a sub category';

  var _subsubselect = ['Please choose a sub sub category',"Cuidado","L Sombrero del..."];
  var _title= 'Please choose a sub sub category';


  String _a1 = '';
  String _a2 = '';
  String _a3 = '';
  String _a4= '';
  String _a5 = '';
  String _a6 = '';
  String _a7 = '';
  String _a8 = '';
  String _a9 = '';
  String _a10 = '';


  final _a1Controller = TextEditingController();
  final _a2Controller = TextEditingController();
  final _a3Controller = TextEditingController();
  final _a4Controller = TextEditingController();
  final _a5Controller = TextEditingController();
  final _a6Controller = TextEditingController();
  final _a7Controller = TextEditingController();
  final _a8Controller = TextEditingController();
  final _a9Controller = TextEditingController();
  final _a10Controller = TextEditingController();




  DatabaseReference _databaseReference = FirebaseDatabase.instance.reference();




  saveAnswer(BuildContext context) async {

    await _databaseReference.child(_category).child(_show).child(_title).child("Answer").set({
      "a1": _a1,
      "a2": _a2,
      "a3": _a3,
      "a4": _a4,
      "a5": _a5,
      "a6": _a6,
      "a7": _a7,
      "a8": _a8,
      "a9": _a9,
      "a10": _a10,

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
    //  backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Add Answer",
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
                    child:Text( dropDownStringItem)
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
                    _a1 = value;
                  });
                },
                controller: _a1Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answer 1',
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
                    _a2 = value;
                  });
                },
                controller: _a2Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answer 2',
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
                    _a3 = value;
                  });
                },
                controller: _a3Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answer 3',
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
                    _a4 = value;
                  });
                },
                controller: _a4Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answwer 4',
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
                    _a5 = value;
                  });
                },
                controller: _a5Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answer 5',
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
                    _a6 = value;
                  });
                },
                controller: _a6Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answer 6',
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
                    _a7 = value;
                  });
                },
                controller: _a7Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answer 7',
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
                    _a8 = value;
                  });
                },
                controller: _a8Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answer 8',
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
                    _a9 = value;
                  });
                },
                controller: _a9Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answer 9',
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
                    _a10 = value;
                  });
                },
                controller: _a10Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter answer 10',
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
                  saveAnswer(context);
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




