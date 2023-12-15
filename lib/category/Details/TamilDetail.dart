import 'package:flutter/material.dart';

import 'package:moviehut/category/Details/TamilDataModel.dart';

class TamilDetail extends StatelessWidget {
  final TamilDataModel fruitDataModel;

  const  TamilDetail({Key? key, required this.fruitDataModel}) : super(key: key);

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
             Text(fruitDataModel.desc,style: TextStyle(fontSize: 20),),
           Text("\n"+fruitDataModel.details,style: TextStyle(fontSize: 15,),textAlign: TextAlign.center,),
            Text(fruitDataModel.ratings),
          ],
        ),
      ),
    );
  }
}