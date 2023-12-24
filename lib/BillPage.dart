import 'package:flutter/material.dart';
import 'package:lunch_tray/vegetablesList.dart';
import 'package:lunch_tray/FruitsList.dart';
import 'package:lunch_tray/StartPage.dart';

class BillPage extends StatelessWidget {
  final int count1;
  final int count2;
  final int count3;
  final int count4;
  final int count5;
  final int count6;
  final int count7;
  final int count8;
  double vegpriceval = 0;
  double fruitpriceval = 0;

  BillPage({
    Key? key,
    required this.count1,
    required this.count2,
    required this.count3,
    required this.count4,
    required this.count5,
    required this.count6,
    required this.count7,
    required this.count8,
  }) : super(key: key){
    vegpriceval = count1*2.36+count2*1.25+count3*0.84+count4*1.34;
    fruitpriceval = count5*1.36+count6*0.25+count7*2.84+count8*2.34;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.brown[800],
        centerTitle: true,
        title:const Text('View Bill',style:TextStyle(fontSize: 30)),
    leading:  IconButton(onPressed: ()=>Navigator.pop(context),icon:
    const Icon(Icons.arrow_back),color: Colors.black),
    ),
          body: Container(
            alignment: Alignment.center,
            color: Colors.brown[400],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Vegetables Bill:     \$$vegpriceval',
                style: const TextStyle(fontSize: 25),
                textAlign: TextAlign.center),
                const SizedBox(height: 20),
                Text('Fruits Bill:      \$$fruitpriceval',
                  style: const TextStyle(fontSize: 25),
                    textAlign: TextAlign.center),
                const SizedBox(height: 50),
                Text('Total amount:       \$${vegpriceval+fruitpriceval}',
                    style: const TextStyle(fontSize: 25),
                    textAlign: TextAlign.center),
                const SizedBox(height: 50),
                ElevatedButton(onPressed: ()=>Navigator.popUntil(context, ModalRoute.withName('/')),style:TextButton.styleFrom(
                padding:  const EdgeInsets.all(15),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.brown), child: const Text('Reorder!',style: TextStyle(fontSize: 30,backgroundColor:Colors.brown,color:Colors.black),
                )
                )],

          )
        )
    )
    );
  }
}