
import 'package:calculator/main.dart';
import 'package:flutter/material.dart';
class Addition extends StatefulWidget {
  // const Addition({Key? key}) : super(key: key);

  @override
  State<Addition> createState() => _AdditionState();
}

class _AdditionState extends State<Addition> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _sum=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Addition"),
          ),
          body: Container(
            child: Column(
              children: [
                Text("Enter first Number"),
                TextField(
                  controller: num1,
                ),
                Text("Enter Second number"),
                TextField(
                  controller: num2,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                  onPressed:(){
                    var getNum1=int.parse(num1.text);
                    var getNum2=int.parse(num2.text);
                    setState(() {
                      _sum=getNum1+getNum2;
                    });

                    print(_sum);

                  }, child: Text("Addition",


                )
                ),
                    Text(_sum.toString(),
                    style: TextStyle(
                      fontSize: 20
                    ),),
]

          ),

          ),

        )
    );
  }
}

