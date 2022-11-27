
import 'package:calculator/screens/Addition.dart';
import 'package:calculator/screens/buttons/Division.dart';
import 'package:calculator/screens/buttons/Multiplication.dart';
import 'package:calculator/screens/buttons/Subtraction.dart';
import 'package:flutter/material.dart';
class Operators extends StatelessWidget {
  const Operators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    )
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Addition()));

                }, child: Text("Addition",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25
                ),

              ),
              )

          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
                )
              ),
                onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Subtraction()));

                }, child: Text("Subtraction",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25
            ),),
          )
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
                )
              ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Division()));

                }, child: Text("Division",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25
            ),),
          )
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)
                )
              ),
                onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Multiplication()));

                }, child: Text("Multiplication",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25
            ),),
          )

          )],




      ),

    );
  }}
