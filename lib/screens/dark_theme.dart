  import 'package:flutter/material.dart';
    import 'package:url_launcher/url_launcher.dart';

import '../category/controller/feedbackpage.dart';
    
    void main() {
  runApp(const ContactsPage());
}
class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3E1F92),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Get in touch',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
                const Text(
                    "We'd love to hear from you. Our friendly team is always here to chat.\n\nClick the medium of Communication..",
                    style: TextStyle(
                        color: Color(0xFFA895D1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal)),
                const SizedBox(height: 30.0),
                TextButton(
                  onPressed: () async {
                    final Uri call = Uri.parse('tel:+919994245914');
                   
                      launchUrl(call);
                   
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.phone, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('+91 9994245914',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final Uri sms = Uri.parse('sms:9994245914');
                   
                      launchUrl(sms);
                   
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.sms, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('+91 9994245914',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final Uri email = Uri(
                      scheme: 'mailto',
                      path: 'videopoint.go@gmail.com',
                      query: 'subject=Hello&body=helloo..)',
                    );
                  
                      launchUrl(email);
                   
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.mail, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('videopoint.go@gmail.com',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final Uri web = Uri.parse(
                      'https://www.justdial.com/Erode/Video-Point-Opp-Nagaratchi-Office-Moolapalayam/9999PX424-X424-180820163355-D4T7_BZDET/',
                    );
                    
                      launchUrl(web);
                  
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.location_pin, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('No.167, Moolapalayam, Erode',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
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
                      Icon(Icons.whatshot, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('WhatsApp@VideoPoint',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                 TextButton(
                  onPressed: () async {
                        Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => feed(),
                  ), 
                 );},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.feedback_rounded, color: Color(0xFFED92A2)),
                      SizedBox(width: 20.0),
                      Text('For any FeedBack',
                          style: TextStyle(
                              color: Color(0xFFA294C2),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}