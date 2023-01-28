import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

        debugShowCheckedModeBanner:false,
        home: HomeActivity());
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(200,50)
    );
    return  Scaffold(
      appBar: AppBar(
        title: Text('Simple form'),
      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),
                labelText: 'First Name'),),),
          Padding(padding: EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),
                labelText: 'Second Name'),),),
          Padding(padding: EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),
                labelText: 'Gmail'),),),
          Padding(padding: EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),
                labelText: 'Password'),),),
          Padding(padding:EdgeInsets.all(20),child: ElevatedButton(onPressed:(){},
            child:Text('Submit'),style:buttonStyle,),)
        ],
      ),
    );
  }
}

