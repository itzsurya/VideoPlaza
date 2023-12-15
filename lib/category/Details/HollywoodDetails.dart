import 'package:flutter/material.dart';
import 'package:moviehut/category/Details/HollywoodDataModel.dart';

import 'package:moviehut/category/Details/TamilDataModel.dart';

class HollywoodDetail extends StatelessWidget {
  final HollywoodDataModel fruitDataModel;

  const  HollywoodDetail({Key? key, required this.fruitDataModel}) : super(key: key);

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
            Text(fruitDataModel.desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text("\n"+fruitDataModel.details+"\n\n",style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,),
          
          ],
        ),
      ),
    );
  }
}