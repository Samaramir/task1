import 'package:flutter/material.dart';
import 'package:flutter_ap/home_page.dart';
import 'package:flutter_ap/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
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
  int currentpage = 0;
  List<Widget> pages= const[
    Homepage(),
    Profilepage(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('flutter'),
      ),
      body:pages[currentpage],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint('fluttering Action Button');
        },

        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(destinations:const
      [NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
      NavigationDestination(icon: Icon(Icons.person), label: 'profile'),
      ],
        onDestinationSelected: (int index){
        setState(()
            {
              currentpage =index;
            });

        },
        selectedIndex: currentpage,
      ),

    );
  }
}