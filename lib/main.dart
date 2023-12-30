import 'package:flutter/material.dart';
import 'package:instagram/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentpage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(onPressed: (){
              setState(() {
                currentpage=0;
              });
            }, icon: Icon(Icons.home,
            color: currentpage==0?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),)),
            Spacer(),
            IconButton(onPressed: (){
              setState(() {
                currentpage=1;
              });
            }, icon: Icon(Icons.search,
              color: currentpage==1?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),)),
            Spacer(),
            IconButton(onPressed: (){
              setState(() {
                currentpage=2;
              });
            }, icon: Icon(Icons.ondemand_video,
              color: currentpage==2?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),)),
            Spacer(),
            IconButton(onPressed: (){
              setState(() {
                currentpage=3;
              });
            }, icon: Icon(Icons.card_travel,
              color: currentpage==3?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),)),
            Spacer(),
            IconButton(onPressed: (){
              setState(() {
                currentpage=4;
              });

            }, icon: Icon(Icons.person,
              color: currentpage==4?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),)),

          ],
        ),
      ),
    );
  }
}
