import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class AddQuestion extends StatefulWidget {
  @override
  _AddQuestionState createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {


  var _select = ['Please choose a category',"TFKids","TFAdults"];
  var _category= 'Please choose a category';

  var _subselect = ['Please choose a sub category',"Bob Esponja","Brandy y el Sr Bigotes","El Pájaro Loco","Los Padrinos Mágicos","Masha y el Oso"];
  var _show= 'Please choose a sub category';

  var _subsubselect = ['Please choose a sub sub category',"Cuidado donde Pintas","El Sombrero del Millón de Dólares", "Oído Absoluto (I)", "Oído Absoluto (2)"];
  var _title= 'Please choose a sub sub category';


  String _q1 = '';
  String _q2 = '';
  String _q3 = '';
  String _q4 = '';
  String _q5 = '';
  String _q6 = '';
  String _q7 = '';
  String _q8 = '';
  String _q9 = '';
  String _q10 = '';

  String _showString = '';
  String _titleString = '';

  final _q1Controller = TextEditingController();
  final _q2Controller = TextEditingController();
  final _q3Controller = TextEditingController();
  final _q4Controller = TextEditingController();
  final _q5Controller = TextEditingController();
  final _q6Controller = TextEditingController();
  final _q7Controller = TextEditingController();
  final _q8Controller = TextEditingController();
  final _q9Controller = TextEditingController();
  final _q10Controller = TextEditingController();

  final _showController = TextEditingController();
  final _titleController = TextEditingController();


  DatabaseReference _databaseReference = FirebaseDatabase.instance.reference();

  saveQuestion(BuildContext context) async {

    await _databaseReference.child(_category).child(_show).child(_title).child("questions").set({
      "q1": _q1,
      "q2": _q2,
      "q3": _q3,
      "q4": _q4,
      "q5": _q5,
      "q6": _q6,
      "q7": _q7,
      "q8": _q8,
      "q9": _q9,
      "q10": _q10,

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
          "Add Question",
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

            //---------------------------------------  Drop Downs   ---------------------------------------------------------

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

            SizedBox(height: 15),


            //--------------------------------  New Fields Section   ---------------------------------------------------------
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 1.0
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text('Or \n create Quiz with new fields',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,),
                    ),
                    Container(
                      margin: EdgeInsets.only(top : 20.0),
                      child: TextField(
                        onChanged: (value){
                          setState(() {
                            _showString = value;
                          });
                        },
                        controller: _showController,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            labelText: 'Enter Show',
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
                            _titleString = value;
                          });
                        },
                        controller: _titleController,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            labelText: 'Enter Title',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            )
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),


            SizedBox(height: 15),


            Container(
              margin: EdgeInsets.only(top : 20.0),
              child: TextField(
                onChanged: (value){
                  setState(() {
                    _q1 = value;
                  });
                },
                controller: _q1Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 1',
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
                    _q2 = value;
                  });
                },
                controller: _q2Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 2',
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
                    _q3 = value;
                  });
                },
                controller: _q3Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 3',
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
                    _q4 = value;
                  });
                },
                controller: _q4Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 4',
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
                    _q5 = value;
                  });
                },
                controller: _q5Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 5',
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
                    _q6 = value;
                  });
                },
                controller: _q6Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 6',
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
                    _q7 = value;
                  });
                },
                controller: _q7Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 7',
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
                    _q8 = value;
                  });
                },
                controller: _q8Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 8',
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
                    _q9 = value;
                  });
                },
                controller: _q9Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 9',
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
                    _q10 = value;
                  });
                },
                controller: _q10Controller,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    labelText: 'Enter question 10',
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
                  saveQuestion(context);
                },
                color: Colors.pink[400],
                child: Text('Save',style: TextStyle(fontSize : 20.0,color: Colors.white),),
              ),
            )
          ],
        ),
      ),

    );
  }
}




