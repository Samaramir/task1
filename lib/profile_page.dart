import 'package:flutter/material.dart';
 const int itemCount=20;
class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:itemCount ,
      itemBuilder:(BuildContext context,int index) {
      return  ListTile(
        title: Text('Iteam ${(index+1)}'),
        leading: const Icon(Icons.person),
        trailing: const Icon(Icons.select_all),
        onTap: (){
          debugPrint('Iteam ${(index+1)} selected');
        },
      );
  },
    );
    }
    }


