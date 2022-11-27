
import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
class Subtraction extends StatefulWidget {
  const Subtraction({Key? key}) : super(key: key);

  @override
  State<Subtraction> createState() => _SubtractionState();
}

class _SubtractionState extends State<Subtraction> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _sub=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Subtraction"),
        ),
        body: Container(
          child: Column(
            children: [
              Text("Enter first number"),
              TextField(
                controller: num1,
              ),
              Text("Enter second number"),
              TextField(
                controller: num2,
              ),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                      )
                  ),
                  onPressed:(){
                    var getNum1=int.parse(num1.text);
                    var getNum2=int.parse(num2.text);
                    setState(() {
                      _sub=getNum1-getNum2;
                    });

                    print(_sub);

                  }, child: Text("Subtraction",
                style: TextStyle(
                  fontSize: 20
                ),
                ),

              ),
            Text(_sub.toString(),style: TextStyle(
              fontSize: 20
            ),
            )]
                ,
          ),
        ),
      ),
    );
  }
}

