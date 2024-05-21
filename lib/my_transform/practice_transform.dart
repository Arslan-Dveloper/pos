import 'package:flutter/material.dart';

class PracticeTransform extends StatelessWidget {
  const PracticeTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TransForm',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Transform.translate(
            offset: Offset(400, 120),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.red,
                  gradient: LinearGradient(colors: [
                    Colors.cyan,
                    Colors.yellow.withOpacity(0.7),
                    Colors.green,
                    Colors.blue,
                  ])),
            ),
          ),
          RotatedBox(
            quarterTurns: 4,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.cyan),
              child: Center(
                child: Text('My Text',style: TextStyle(fontSize: 20),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
