import 'package:flutter/material.dart';
import 'package:moviehut/category/Details/HollywoodDataModel.dart';
import 'package:moviehut/category/Details/HollywoodDetails.dart';

import 'Details/FruitDetail.dart';
import 'package:moviehut/category/Details/FruitDataModel.dart';

void main() {
  runApp(hollywood());
}

class hollywood extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hollywood Collections',
      debugShowMaterialGrid: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

    static List<String> fruitname =[
    'The Nun 2 ','Talk To Me ','Poison ',
    'Gran Turismo ','Insidious: The Red Door '];

    static List url = [
      
      'https://www.91-cdn.com/metareel-images/content/posters-7-1690485587632-xmRtHg6hqMzYCZJPwbY1Kycgi9O.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1691042162140-kw0Hegzpg08v37nRcmczCvqpl7d.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1696030460224-evgEvYCUGidCyUCxA77EUJiWpVQ.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1682972442900-1g8r5f7qUQ6ETHbQ0TxPI5ZaT30.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1682881848133-uS1AIL7I1Ycgs8PTfqUeN6jYNsQ.jpg?tr=h-350,q-40&version=5',
      
     
];
    
 static List<String> details =[
    'The tale picks up four years after the events of the first film, revisiting Sister Irenes encounter with the terrible creature Valak, also known as the Nun. This time the evil force will leave no stone unturned to wreak havoc.',
    'A tracking shot follows a young man into a rowdy party where his sibling is sequestered in a bedroom. He pleadingly bursts down the door and this turns out to be a bad choice.',
    'This psychological thriller portrays the eerie and strange story of a woman who discovers a venomous snake sleeping in her bed, setting the stage for a thrilling and enigmatic story.',
    'A woman suffering from dissociative identity disorder causes problems for her family. A psychiatrist wants to help but finds himself in danger and gets caught up in some serious drama and trouble when he investigates the case further.',
    'Josh Lambert travels to the eastern region to accompany his son, Dalton, to his new school. Unfortunately, what was intended to be an optimistic college experience quickly turns into a horrible experience when Daltons buried demons resurface, dragging them both into a haunting nightmare.'
    
    ];
    
    final List<HollywoodDataModel> Fruitdata = List.generate(
        fruitname.length,
            (index)
        => HollywoodDataModel('${fruitname[index]}', '${url[index]}','${fruitname[index]}','${details[index]}',''));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hollywood Collections'),),
      body: ListView.builder(
           itemCount: Fruitdata.length,
          itemBuilder: (context,index){
             return Card(
               child: ListTile
               (
                 title: Text(Fruitdata[index].name),
                 leading: SizedBox(
                   width: 50,
                   height: 50,
                   child: Image.network(Fruitdata[index].ImageUrl),
                 ),
                 onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HollywoodDetail(fruitDataModel: Fruitdata[index],)));
                 },
               ),
             );
          }
      )
    );
  }
}