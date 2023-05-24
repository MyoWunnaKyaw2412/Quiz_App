import 'package:flutter/material.dart';
import 'Questionlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Questionlist myquestionlist = Questionlist();
  @override
  int num = 0;
  void endquiz() {
    if (num == 13) {
      num = 0;
    }
  }

  void endicon() {
    if (iconlist == 13) ;
    {
      iconlist == 0;
    }
  }

  List<Icon> iconlist = [];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(myquestionlist.my_QuestionList[num].question),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                   
                    endicon();
                   
                    if (myquestionlist.my_QuestionList[num].answer == true)
                      iconlist.add(const Icon(Icons.check));
                    else
                      iconlist.add(Icon(Icons.close));
                     num += 1; 
                     endquiz(); 
                  });
                },
                child: const Text("True")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    
                    endicon();
                    
                    if (myquestionlist.my_QuestionList[num].answer == false)
                      iconlist.add(Icon(Icons.check));
                    else
                      iconlist.add(Icon(Icons.close));
                    num += 1;
                    endquiz(); 
                  });
                },
                child: const Text("False")),
            Row(
              children: 
                iconlist,
                
            ),
          ],
        ),
      ),
    );
  }
}
