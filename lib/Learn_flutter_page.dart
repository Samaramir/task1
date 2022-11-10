import 'package:flutter/material.dart';

class Learnflutterpage extends StatefulWidget {
  const Learnflutterpage({Key? key}) : super(key: key);

  @override
  State<Learnflutterpage> createState() => _LearnflutterpageState();
}

class _LearnflutterpageState extends State<Learnflutterpage> {
  bool isSwitch=false;
  bool? isCheckbox=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('learn flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
          Navigator.of(context).pop();
        }, 
          icon:const Icon(Icons.arrow_back_ios),),
        actions: [IconButton(
          onPressed:(){
            debugPrint('Action');},
          icon: const Icon(Icons.info_outline,
          ),
        ),
        ],
      ),
      body:SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('images/sa.jpg'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
            child:  Text('Thise the Text wedgets',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary:isSwitch? Colors.green: Colors.blue,
            ),
          onPressed:(){
          debugPrint('Elevated Button');
          },
            child: const Text('Elevated Button'),
  ),
          OutlinedButton(onPressed:(){
            debugPrint('Outlined Button');
          },
            child: const Text('Outlined Button'),
          ),
      TextButton(
        onPressed:(){
        debugPrint('Text Button');
      },
        child: const Text('Text Button'),
      ),
          GestureDetector(
            onTap: (){
              debugPrint(' This is the Row');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                Icon(Icons.local_fire_department,
                color: Colors.blue,
                ),
                Text('Row Widget'),
                Icon(Icons.local_fire_department,)
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newBool){
            setState(() {
              isSwitch=newBool;
            });
          }),
          Checkbox
    ( value: isCheckbox,
    onChanged:(bool? newBool) {
      setState(() {
        isCheckbox = newBool;
      });
    }),
          Image.network('https://th.bing.com/th/id/R.835478d5a77851df30599bff16da938f?rik=X5lmHUKyiU8rQQ&riu=http%3a%2f%2f4.bp.blogspot.com%2f-uYDb0ml6T1Y%2fUD4VBCWHlzI%2fAAAAAAAAERs%2f2j3pOyxJwUI%2fs1600%2fwallpapers-atoz.blog-Sunset-Photos-03.jpg'),

        ],
      ),
    ),
    );
  }
}
