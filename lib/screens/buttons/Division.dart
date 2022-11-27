import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

class Division extends StatefulWidget {
  const Division({Key? key}) : super(key: key);

  @override
  State<Division> createState() => _DivisionState();
}

class _DivisionState extends State<Division> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  double _div=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Division"),
        ),
        body: Container(
          child: Column(
            children: [
              Text("Num 1"),
              TextField(
                controller: num1,
              ),
              Text("Num2"),
              TextField(
                controller:num2 ,
              ),
              ElevatedButton(
                  onPressed:(){
                    var getNum1=double.parse(num1.text);
                    var getNum2=double.parse(num2.text);
                    setState(() {
                      _div=(getNum1/getNum2);
                    });



                    print(_div);


                  }, child: Text("Division")),
              Text(_div.toString(),
              style: TextStyle(
                fontSize: 20
              ),),
              ElevatedButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                  }, child: Text("Back to menu"))
            ],
          ),
        ),
      ),
    );
  }
}

