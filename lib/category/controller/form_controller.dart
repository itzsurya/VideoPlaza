import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:moviehut/screens/forms.dart';

/// FormController is a class which does work of saving FeedbackForm in Google Sheets using 
/// HTTP GET request on Google App Script Web URL and parses response and sends result callback.
class FormController {
  
  // Google App Script Web URL.
  static  var URL = "https://script.google.com/macros/s/AKfycbyAaNh-1JK5pSrUnJ34Scp3889mTMuFI86DkDp42EkWiSOOycE/exec";
  
  // Success Status Message
  static const STATUS_SUCCESS = "SUCCESS";

  /// Async function which saves feedback, parses [feedbackForm] parameters
  /// and sends HTTP GET request on [URL]. On successful response, [callback] is called.
   void submitForm(
      FeedbackForm feedbackForm, void Function(String) callback) async {
                print("controller1");
    try {
      http.post(URL as Uri, body: feedbackForm.toJson()).then((response) {
        //if (response.statusCode == 302) {
          print("controller2");
          var url = response.headers['location'];
           http.get(url as Uri).then((response) {
            callback(convert.jsonDecode(response.body)['status']);
          });
       // } else {
          callback(convert.jsonDecode(response.body)['status']);
       // }
      });
    } catch (e) {
      print(e);
    }
  }
}