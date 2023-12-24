import 'package:flutter/material.dart';
import 'package:lunch_tray/vegetablesList.dart';
import 'package:lunch_tray/StartPage.dart';
import 'package:lunch_tray/BillPage.dart';

class FruitsPage extends StatefulWidget {
  final int count1;
  final int count2;
  final int count3;
  final int count4;

  const FruitsPage({
    Key? key,
    required this.count1,
    required this.count2,
    required this.count3,
    required this.count4,

  }) : super(key: key);

  @override
  State<FruitsPage> createState() => _FruitsPageState();
}
class _FruitsPageState extends State<FruitsPage>{
  int count5=0;
  int count6=0;
  int count7=0;
  int count8=0;

  void _incrCount5(){
    setState(() {
      count5++;
    });
  }
  void _incrCount6(){
    setState(() {
      count6++;
    });
  }
  void _incrCount7(){
    setState(() {
      count7++;
    });
  }
  void _incrCount8(){
    setState(() {
      count8++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.green[800],
              centerTitle: true,
              title:const Text('View Fruits',style:TextStyle(fontSize: 30)),
              leading:  IconButton(onPressed: ()=>Navigator.pop(context),icon:
              const Icon(Icons.arrow_back),color: Colors.black),
            ),
            body: Container(
                color: Colors.red[800],
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          Center(child: Text('Items',style: TextStyle(fontSize: 25))),
                          Center(child: Text('Price in USD',style: TextStyle(fontSize: 25)))],
                      ),
                      ElevatedButton(onPressed: _incrCount5,
                        style: TextButton.styleFrom(backgroundColor: Colors.green), child: Text('Apples               ${count5}X \$1.36',
                          style: const TextStyle(backgroundColor: Colors.green, color: Colors.black, fontSize: 20)),
                      ),
                      ElevatedButton(onPressed: _incrCount6,
                        style: TextButton.styleFrom(backgroundColor: Colors.green), child: Text('Grapes               ${count6}X \$0.25',
                          style: const TextStyle(backgroundColor: Colors.green, color: Colors.black, fontSize: 20)),
                      ),
                      ElevatedButton(onPressed: _incrCount7,
                        style: TextButton.styleFrom(backgroundColor: Colors.green), child: Text('Bananas              ${count7}X \$2.84',
                          style: const TextStyle(backgroundColor: Colors.green, color: Colors.black, fontSize: 20)),
                      ),
                      ElevatedButton(onPressed: _incrCount8,
                        style: TextButton.styleFrom(backgroundColor: Colors.green), child: Text('Mangoes              ${count8}X \$2.34',
                          style: const TextStyle(backgroundColor: Colors.green, color: Colors.black, fontSize: 20)),
                      ),

                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[
                            ElevatedButton(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>BillPage(count1:widget.count1,count2:widget.count2,count3:widget.count3,count4:widget.count4,count5:count5,count6:count6,count7:count7,count8:count8)))
                                ,style:TextButton.styleFrom(
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