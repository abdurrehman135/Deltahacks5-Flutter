import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Create An Event"),
        ),
        body: EventCreationForm(),
      ),
    );
  }
}


class EventCreationForm extends StatefulWidget {
  @override
  EventCreationFormState createState() {
    return EventCreationFormState();
  }
}

// Create a corresponding State class. This class will hold the data related to
// the form.
class EventCreationFormState extends State<EventCreationForm> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
            hintText: "Event Name",
            hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
            labelText: "Event Name"
           ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Name cannot be empty!';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
          ),
          TextFormField(
            decoration: InputDecoration(
            hintText: "Event Name",
            hintStyle: TextStyle(fontWeight: FontWeight.w300, color: Colors.black),
            labelText: "Event Name"
           ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Name cannot be empty!';
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, we want to show a Snackbar
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Event Being Created')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}


