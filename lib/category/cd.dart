import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:moviehut/models/cd_model.dart';
import 'dart:convert' as convert;

class CdHomePage extends StatefulWidget {
  const CdHomePage({super.key});

  @override
  State<CdHomePage> createState() => _CdHomePageState();
}

class _CdHomePageState extends State<CdHomePage> {
 


List<CdModel> cdmodels = <CdModel>[];

getCdModelsFromSheet() async{

  var raw= await http.get("https://script.google.com/macros/s/AKfycbxhfNpHZ2ih97tSW6lvX3C5H_p0cbtqy5pEcqxRUkqlkOVbl46GTqCQX9tDu0oQ_arVGg/exec" as Uri);
  var jsonCdModel = convert.jsonDecode(raw.body);
  print('This is json Cdmodel $jsonCdModel');

   //cdmodels = jsonCdModel.map((json) => CdModel.fromJson(json));
    
    jsonCdModel.forEach((element){
      print(element);
      
      CdModel cdmodel = CdModel(profilePic: 'profile_pic',name: 'name', source: 'source', stock: 'stock');
      cdmodel.name=element['name'];
      cdmodel.profilePic=element['profilepic'];
      cdmodel.source=element['source'];
      cdmodel.stock=element['stock'];

      cdmodels.add(cdmodel);


    });

    print('${cdmodels[0]}');
}
    @override
    void initState(){
      getCdModelsFromSheet();
      super.initState();
    }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('CD Collections'),
        elevation: 0,
      ),
      body: Container(
        
          child: ListView.builder(
            itemCount: cdmodels.length,
            itemBuilder: (context, index){
              return CdTile(
                
                profilePic: cdmodels[index].profilePic, 
                name: cdmodels[index].name,
                source: cdmodels[index].source,
                stock: cdmodels[index].stock,

              );
            }
          , 
          ),
                   
      ),
      
    );
  }
  
} 

class CdTile extends StatelessWidget {
  
  final String profilePic,name,source,stock;
  CdTile( 
    {required this.name,
     required this.profilePic,
     required this.source,
     required this.stock, 
     });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.all
                (Radius.circular(0)),
                child: Image.network(profilePic))),
                    Column(children: [
                      Text(name),
                      Text('from $source')
                    ],)
             ],)
      ],),
      
    );
   
  }
}