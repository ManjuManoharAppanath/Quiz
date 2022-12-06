import 'package:flutter/material.dart';
import 'package:oop1/operations.dart';
import 'classconcep.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Operation op=new Operation();
void main() {
  runApp(MaterialApp(home: const MyApp(),
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MyApp1(),);
  }
}


class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {

List<Icon> icons=[];
void answers(bool r)
{
  bool val=op.getCorrectAns();
  setState(() {
    if(op.isFinished()==true){
    Alert(context: context,
      title: "Finished",
    desc: "do u have continue?",
      buttons: [DialogButton(child: Text("Continue",style: TextStyle(fontSize: 20),),
          onPressed: ()=>Navigator.pop(context))]
    ).show();
      op.reset();
      icons=[];
    }
    else{
      if(val==r)
        {
          icons.add(Icon(Icons.check,color: Colors.green));
        }
      else
        {
          icons.add(Icon(Icons.close,color: Colors.red,));
        }
      op.nextQue();
    }
  });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
    body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment:CrossAxisAlignment.stretch ,
        children: [
          Expanded(flex: 5,
            child: Center(
              child: Text(op.getQueText(),
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                // height: 20,
                // width: 200,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: Colors.red
                ),
                child: TextButton(onPressed: (
                    ){
                  answers(true);
                },
                  child: Text('True',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                // height: 20,
                // width: 200,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(5),
                    color: Colors.green
                ),
                child: TextButton(onPressed: (){
                  answers(false);
                },
                  child: Text('False',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Row(children: icons,),
      ],
    ),
    ),
    );

  }
}
