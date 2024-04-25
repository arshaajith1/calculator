import 'dart:js_util';

import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  final enteranumberController = TextEditingController();

  final enteraNumberController = TextEditingController();

  double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Simplistic Calculator',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Text(result.toString()),
            SizedBox(
              height: 50.0,
            ),
            SizedBox(height: 50.0),
            Divider(
              height: 100,
              color: Colors.black,
              thickness: 2,
            ),
            SizedBox(height: 50.0),
            TextField(
              controller: enteranumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter a Number',
                labelStyle: TextStyle(color: Colors.black, fontSize: 12.0),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            TextField(
              controller: enteraNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter a Number',
                labelStyle: TextStyle(color: Colors.black, fontSize: 12.0),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 45.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent),
                      onPressed: () {double num1=double.parse(enteranumberController.text);
                       double num2=double.parse(enteraNumberController.text);
                       result=num1+num2;

                       print(result);
                       setState(() {

                       });

                      },
                      child: Text('+'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent),
                      onPressed: () {double num1=double.parse(enteranumberController.text);
                      double num2=double.parse(enteraNumberController.text);
                       result=num1-num2;
                      print(result);
                      setState(() {

                      });

                      },
                      child: Text('-'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent),
                      onPressed: () {double num1=double.parse(enteranumberController.text);
                      double num2=double.parse(enteraNumberController.text);
                      result=num1*num2;
                      print(result);
                      setState(() {

                      });

                      },
                      child: Text('*'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent),
                      onPressed: () {double num1=double.parse(enteranumberController.text);
                      double num2=double.parse(enteraNumberController.text);
                       result=num1/num2;
                      print(result);
                      setState(() {

                      });

                      },
                      child: Text('/'),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
