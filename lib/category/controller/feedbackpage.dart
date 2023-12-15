import 'package:flutter/material.dart';
import 'package:moviehut/category/controller/form_controller.dart';
import 'package:moviehut/screens/forms.dart';

void main() => runApp(feed());

class feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FeedBack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'FeedBack'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // TextField Controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController feedbackController = TextEditingController();

  // Method to Submit Feedback and save it in Google Sheets
  void _submitForm() {
    // Validate returns true if the form is valid, or false
    // otherwise.
    print("submit_form");
    //if (_formKey.currentState!.validate()) {
      // If the form is valid, proceed.
      FeedbackForm feedbackForm = FeedbackForm(
          nameController.text,
          emailController.text,
          mobileNoController.text,
          feedbackController.text);

      FormController formController = FormController();

      _showSnackbar("Submitting Feedback");

      // Submit 'feedbackForm' and save it in Google Sheets.
      formController.submitForm(feedbackForm, (String response) {
        print("Response: $response");
        if (response == FormController.STATUS_SUCCESS) {
          // Feedback is saved succesfully in Google Sheets.
          _showSnackbar("Feedback Submitted");
        } else {
          // Error Occurred while saving data in Google Sheets.
          _showSnackbar("Error Occurred!");
        }
      });
    
  }
 
  // Method to show snackbar with 'message'.
  _showSnackbar(String message) {
      final snackBar = SnackBar(content: Text(message));
      _scaffoldKey.currentState; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,  
      
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Form(
                key: _formKey,
                child:
                  Padding(padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        controller: nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Valid Name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Name'
                        ),
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (!value!.contains("@")) {
                            return 'Enter Valid Email';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email'
                        ),
                      ),
                      TextFormField(
                        controller: mobileNoController,
                        validator: (value) {
                          if (value!.trim().length != 10) {
                            return 'Enter 10 Digit Mobile Number';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                        ),
                      ),
                      TextFormField(
                        controller: feedbackController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Valid Feedback';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          labelText: 'Feedback'
                        ),
                      ),
                    ],
                  ),
                ) 
              ),
              TextButton(
                
                onPressed:_submitForm,
                child: Text('Submit Feedback'),
              ),
            ],
          ),
        ),
    );
  }
}