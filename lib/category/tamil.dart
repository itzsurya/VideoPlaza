import 'package:flutter/material.dart';

import 'package:moviehut/category/Details/TamilDataModel.dart';

import 'Details/TamilDetail.dart';


void main() {
  runApp(tamil());
}

class tamil extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tamil Collections',
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
    'Irugapatru','Are You Ok Baby?','Iraivan ','Rangoli',
    'Chandramukhi 2','Paramporul','Mark Antony ','Harkara ',
    'Adiyae ','Lucky Man','Chithha','Jailer','Dd Returns',
    'Yaadhum Oore Yaavarum Kelir','Por Thozil'];

    static List url = [
      
      'https://www.91-cdn.com/metareel-images/content/posters-1697706691-28AzafDajgmd53F2DgMAK2ncu3K.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1694652592922-1hr7UKgkgcnRHvyWSeJPb1b2gN2.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1696332824358-osoXMNSIO9YGwzCVYHsEaynXCbz.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-1692788345-iGkbrUo20knzN57sSicrf81r4q4.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1687418985786-3Du9zOj4DZbgNTEdYSIf6Vx5Cyb.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1694802698829-gYQToTJDOL1OHD540WKBpVihj5N.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1695260939784-3xz1lfMrFlNtZ4H8DQKvYog8ilR.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-1692258863-fIwLD6e0BsoVFMS8aKoPYTlwEEp.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1693446127116-kynXOnVNi5s1BgLNILii00RJdaW.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-1693451953-4HwUPhOOq7cS0SaoYqZnYRKnqtW.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-1693451666-5JdoPaXlLt4fYu2V8Ug12QRiQ89.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1683636514995-BkRDHNm3uFZqO70Hjuemud122V.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1691041743148-aautnOfweBUF74nmwRI2iSf8VdL.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1684437143603-i8broKyZelH6nKk92ucxMd7Y9M2.jpg?tr=h-350,q-40&version=5',
      'https://www.91-cdn.com/metareel-images/content/posters-7-1686510670696-lZ2BbjGBDRW5Q5Q9jgEknuiEQ0f.jpg?tr=h-350,q-40&version=5'
];
    
 static List<String> details =[
    'Three couples from different economic backgrounds find ways to fix their relationships.',
    'Vidhya and Balan, a Kerala couple, adopt a new-born daughter named Anya. They lavish her with love and care, feeling delight and fulfilment in finally becoming parents after years of desire.',
    'This comedy thriller is jam-packed with amusing and suspenseful anecdotes. When a mobile store owner buys a new car, the story takes an unexpected turn, resulting in a succession of mayhem and craziness in the lives of the main characters. ',
    'A wealthy young man falls in love with a middle-class girl, and their families arrange their marriage. When the girls father is harmed, she believes the man is to blame, casting doubt on the wedding.',
    'A woman suffering from dissociative identity disorder causes problems for her family. A psychiatrist wants to help but finds himself in danger and gets caught up in some serious drama and trouble when he investigates the case further.',
    'Aadhi is struggling with both financial and emotional issues and thinks about performing small acts of theft as a means to survive but soon his plans take a drastic turn, when he meets Maithireyan, an enigmatic cop.',
    'Mark and Antony were gangsters from the 1980s who controlled their environment by banding together. Although Antony passed away at that time in the mob struggle, the two have time-traveling abilities. ',
    'The films plot involves a new postman who witnesses a transforming occurrence in a rural village in Theni. While posting an envelope on a mountaintop, he overhears the story of Harkara, the nations first postman 150 years ago.',
    'After various efforts, a man becomes stranded in an alternate reality, unable to return home. Yet, he comes to understand that the predicament is far more intricate than he initially thought.',
    'A man on the verge of divorce pours out his heart to the Divine. In answer, God gives him a second chance to write a happy ending to his life tale.',
    'Chithha means the world to his niece, and so does she to him. When she gets lost, Chitta goes on a search for her, and his whole life comes crashing down. What unfolds is an emotional thriller that asks the viewer, How far will you go for your child?.',
    'Jailer is a gripping thriller about a determined prison warden who becomes entangled in a complex web of corruption, betrayal, and intrigue as he uncovers terrible truths within the prison walls.',
    'Unknowingly entering the Fernandes house is a band of robbers who have just stolen millions of rupees and need a place to hide. The ghosts are ready to start causing chaos.',
    'It is the intriguing and challenging tale of a refugee who navigates through all the struggles of lives in the attempts of seeking an identity of himself and the answers to his life.'
    ,'In order to succeed in his very first assignment, a rookie police officer who is academically gifted but faint-hearted must face his worries. He must work with a hostile senior officer to apprehend a serial killer.'];
    
    static List<String> ratings =[
        "8.4","7.8","4.6","8.3",
        "2.7","7.5","6.7","7.4",
        "6.2","6.4","8","6.2","7","8","7"];

    final List<TamilDataModel> Fruitdata = List.generate(
        fruitname.length,
            (index)
        => TamilDataModel('${fruitname[index]}', '${url[index]}','${details[index]}','${ratings[index]}','Rating',''));

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
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TamilDetail(fruitDataModel: Fruitdata[index],)));
                 },
               ),
             );
          }
      )
    );
  }
}