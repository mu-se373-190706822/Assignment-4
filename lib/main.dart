import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(title: Text("assaiment 4"),),
    body: BodyApp(),),);
  }
}
class BodyApp extends StatefulWidget {
  const BodyApp({Key? key}) : super(key: key);
  @override
  State<BodyApp> createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  DateTime _dateTime = DateTime(2022,1,1);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment:MainAxisAlignment.spaceAround,children: [
        Text("data"),
        Padding(
          padding:EdgeInsets.all(15.0),
          child: Card(child: Text("age",style: TextStyle(fontSize: 50),),
          color: Colors.deepOrange,),
        ),
        Text("In years,Months,Days"),
        RaisedButton(onPressed: (){
          setState(() {
            showDatePicker(context: context, initialDate: DateTime(2021,1,1), firstDate: DateTime(1950), lastDate: DateTime(2222)).
            then((date){
              setState(() {
                _dateTime = date!;
              });
            });

          });
        }, child: Text("Datepicker")),
        Text("${_dateTime.year}/${_dateTime.month}/${_dateTime.day}")

      ],),
    );
  }
}
