import 'package:flutter/material.dart';
import 'package:flutter_ap/Learn_flutter_page.dart';
class Homepage extends StatelessWidget{
  const Homepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton(onPressed:() {
     Navigator.of(context).push(MaterialPageRoute(builder:  (BuildContext context){
       return  const Learnflutterpage();
     },
     ),
     );
    },
      child: const Text('Learn flutter'),
    ),

  );
  }

}
