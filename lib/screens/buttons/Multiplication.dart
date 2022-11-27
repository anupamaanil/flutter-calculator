import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

class Multiplication extends StatelessWidget {
  // const Multiplication({Key? key}) : super(key: key);
TextEditingController num1= TextEditingController();
TextEditingController num2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Multiplication"),
        ),
        body: Container(
          child: Column(
            children: [
              Text("Num 1"),
              TextField(
                controller: num1,
              ),
              Text("Num 2"),
              TextField(
                controller: num2,
              ),

              ElevatedButton(
                  onPressed:(){
                    var getNum1=int.parse(num1.text);
                    var getNum2=int.parse(num2.text);
                    var result=getNum1*getNum2;

                    print(result);


                  }, child: Text("Division")),
              ElevatedButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));

                  }, child: Text("BAck to Menu"))
            ],
          ),
        ),
      ),
    );
  }
}
