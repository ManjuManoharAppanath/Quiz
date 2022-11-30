import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const MyApp(),
  ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
    body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("A slung's bodi is green",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200,left: 100,right: 100),
            child: Column(
              children: [
              Row(
                children: [
                  Expanded(
                    child: Container(height: 50,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5),
                          color: Colors.red
                      ),
                      child: TextButton(onPressed: (){},
                        child: Text('True',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(height: 50,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5),
                          color: Colors.green
                      ),
                      child: TextButton(onPressed: (){},
                        child: Text('False',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        ],
      ),
          ),
      ],
    ),
    ),
    );

  }
}
