import 'package:flutter/material.dart';
import 'package:moviehut/category/Details/FruitDataModel.dart';
import 'package:url_launcher/url_launcher.dart';

class CdDetail extends StatelessWidget {
  final CdDataModel fruitDataModel;

  const CdDetail({Key? key, required this.fruitDataModel}) : super(key: key);
 
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
                   TextButton(
                     onPressed: () async {
               
                     final Uri whatsapp = Uri.parse('whatsapp://send?phone=+919994245914');
                       launchUrl(whatsapp);
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.delivery_dining_rounded, color: Color(0xFFED92A2)),
                      SizedBox(width: 50.0),
                      Text('Buy it..',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 26.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}