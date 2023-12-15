import 'package:flutter/material.dart';
import 'package:moviehut/category/Details/TamilWebDataModel.dart';
import 'package:moviehut/category/Details/TamilWebDetail.dart';

void main() {
  runApp(tamilweb());
}

class tamilweb extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TamilWeb Collections',
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
    'Mathagam','Modhalum Kaadhalum ','Auto Shankar ','Vera Maari Office ',
    'Singapennae ','My3','En Ethire Rendu Papa  ','Sweet Kaaram Coffee ',
    'Oru Kodai Murder Mystery ','Sengalam'];

    static List url = [
      
      'https://www.91-cdn.com/metareel-images/content/posters-7-1692002047980-cgfuC4V9HwCMl7HchECxqD8xpmc.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/Season-posters-7-1698053113.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1684013481879-p8QH55ZOAMhV5uyct5fFntoBtba.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1694688020329-fuzWxsODov7ApnjM53QwV3ioe10.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/Season-posters-7-1697613042.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1694586670924-fhajkBkPZM2W7yncKEJH208qtLn.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/Season-posters-7-1692942970.jpeg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1690666104247-qhm8HKWUVS5BbWLqM8C4AE2NnXl.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1682796824407-1X6mMH455vlCzF8XFdtIqHMfMym.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1684269294839-fHcPdNqcpadE4Ze7ciQF55gYQDh.jpg?tr=h-350,q-40&version=5',
     
];
    
 static List<String> details =[
    'Set over an interval of 30 hours, this intense story narrates the tale of an intense overnight invasion, that forced the law enforcement system to work and try to dismantle a criminal enterprise.',
    'Vikram loves his daughter Tanvika, but fails to express himself. Vedha adores the kid, which makes him envy her. Can Tanvika bring these lonely hearts closer?',
    'Based on horrifying true incidents that happened between 1985 - 1995 in Chennai, still remembered as Once upon a time in Madras',
    '"Vera Maari Office" is a web show that is directed by Chidambaram Manivannan and produced and created by Shivakanth. This show is based on situational comedy.Â ',
    'A woman suffering from dissociative identity disorder causes problems for her family. A psychiatrist wants to help but finds himself in danger and gets caught up in some serious drama and trouble when he investigates the case further.',
    'A rich entrepreneur struggling with an allergy to human touch finds a solution in a robot. But when it crashes before delivery, a real replacement is sent.',
    'En Ethire Rendu Papa, an adult comedy, is the story of a young couple on a romantic staycation in a very unique bungalow. Things do get hot and steamy but not in a way they had imagined. Interruptions and hurdles come in the form of a jilted fiancé and his scheming, a bunch of kidnappers, tonnes of misunderstandings and to top it all, a sexy ghost, who claims to have fallen in love with Jith, our main man.',
    '"Sweet Kaaram Coffee" follows the story of three women living in the same house but having a generation gap. In this world, women are bound by a lot of things and people but in this movie they put themselves ahead of the people they are bound by.',
    'It is the tale of Vyom, who happens to be an introverted school student who develops affections for Tara, his quiz show partner but things take an unfortunate turn when Tara unexpectedly vanishes and her lifeless corpse is later discovered in a lake.',
    '"Sengalam" is a Tamil drama series about the lives of a close-knit community in a rural village, exploring love, family dynamics, and societal challenges with humour and emotion.',
    
    ];
    
    final List<TamilWebDataModel> Fruitdata = List.generate(
        fruitname.length,
            (index)
        => TamilWebDataModel('${fruitname[index]}', '${url[index]}','${fruitname[index]}','${details[index]}',''));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tamil Collections'),),
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
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TamilWebDetail(fruitDataModel: Fruitdata[index], )));
                 },
               ),
             );
          }
      )
    );
  }
}