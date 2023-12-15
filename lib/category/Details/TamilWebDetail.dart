import 'package:flutter/material.dart';


import 'package:moviehut/category/Details/TamilWebDataModel.dart';

class TamilWebDetail extends StatelessWidget {
  final TamilWebDataModel fruitDataModel;

  const  TamilWebDetail({Key? key, required this.fruitDataModel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(fruitDataModel.name),),
      body: Center(
        child: Column(
          children: [
            Image.network(fruitDataModel.ImageUrl),
            SizedBox(
              height: 20,
              
            ),
            Text(fruitDataModel.name,style: TextStyle(fontSize: 20),),
              Text("\n"+fruitDataModel.details+"\n\n",style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,),
          
          ],
        ),
      ),
    );
  }
}