import 'package:flutter/material.dart';
import 'package:lunch_tray/FruitsList.dart';
import 'package:lunch_tray/StartPage.dart';
import 'package:lunch_tray/BillPage.dart';

// void main(){
//   runApp(VegetablePage());
// }
class VegetablePage extends StatefulWidget {
  const VegetablePage({Key? key}) : super(key: key);
  @override
  State<VegetablePage> createState() => _VegetablePageState();
}
class _VegetablePageState extends State<VegetablePage>{
 int count1=0;
 int count2=0;
 int count3=0;
 int count4=0;

 void _incrCount1(){
   setState(() {
     count1++;
   });
 }
 void _incrCount2(){
   setState(() {
     count2++;
   });
 }
 void _incrCount3(){
   setState(() {
     count3++;
   });
 }
 void _incrCount4(){
   setState(() {
     count4++;
   });
 }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.green,
          centerTitle: true,
          title:const Text('View Vegetables',style:TextStyle(fontSize: 30)),
          leading:  IconButton(onPressed: ()=>Navigator.pop(context),icon:
          const Icon(Icons.arrow_back),color: Colors.black),
      ),
          body: Container(
          color: Colors.deepOrange,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                  Center(child: Text('Items',style: TextStyle(fontSize: 25))),
                  Center(child: Text('Price in USD',style: TextStyle(fontSize: 25)))],
                  ),
                ElevatedButton(onPressed: _incrCount1,
                  style: TextButton.styleFrom(backgroundColor: Colors.green), child: Text('Cauliflower         ${count1}X \$2.36',
                style: const TextStyle(backgroundColor: Colors.green, color: Colors.black, fontSize: 20)),
                ),
                ElevatedButton(onPressed: _incrCount2,
                    style: TextButton.styleFrom(backgroundColor: Colors.green), child: Text('Potatoes            ${count2}X \$1.25',
                    style: const TextStyle(backgroundColor: Colors.green, color: Colors.black, fontSize: 20)),
                ),
                ElevatedButton(onPressed: _incrCount3,
                    style: TextButton.styleFrom(backgroundColor: Colors.green), child: Text('Beans               ${count3}X \$0.84',
                    style: const TextStyle(backgroundColor: Colors.green, color: Colors.black, fontSize: 20)),
                ),
                ElevatedButton(onPressed: _incrCount4,
                    style: TextButton.styleFrom(backgroundColor: Colors.green), child: Text('Cabbage             ${count4}X \$1.34',
                    style: const TextStyle(backgroundColor: Colors.green, color: Colors.black, fontSize: 20)),
                ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      ElevatedButton(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>FruitsPage(count1:count1,count2:count2,count3:count3,count4:count4))),style:TextButton.styleFrom(
                        padding:  const EdgeInsets.all(15),
                        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                        backgroundColor: Colors.green,
                      ),
                          child: const Text('Next',style: TextStyle(fontSize: 30,backgroundColor:Colors.green,color:Colors.black))
                      ),
                      ElevatedButton(onPressed: ()=>Navigator.popUntil(context,ModalRoute.withName('/')),style:TextButton.styleFrom(
                        padding:  const EdgeInsets.all(15),
                        shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.green,
                      ),
                          child: const Text('Cancel',style: TextStyle(fontSize: 30,backgroundColor:Colors.green,color:Colors.black))
                      )
                    ])
              ]
            )
          )
      )
    );
                }
}