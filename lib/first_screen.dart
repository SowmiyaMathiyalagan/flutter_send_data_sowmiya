import 'package:flutter/material.dart';
import 'package:flutter_send_data_sowmiya/second_screen.dart';
import 'main.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  final _formField = GlobalKey<FormState>();

  var usernameController = TextEditingController();
  var mobileIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formField,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    prefixIcon: Icon(Icons.account_circle),
                    labelText: 'UserName',
                    hintText: 'Enter the UserName',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  controller: mobileIDController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'Mobile Number',
                    hintText: 'Enter the MobileNo',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => SecondScreen(username: usernameController.text, mobileNo: mobileIDController.text)));
                },
                child: Text('Send Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
