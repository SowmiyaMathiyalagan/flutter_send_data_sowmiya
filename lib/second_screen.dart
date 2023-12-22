import 'package:flutter/material.dart';
import 'package:flutter_send_data_sowmiya/first_screen.dart';
import 'package:flutter_send_data_sowmiya/main.dart';

class SecondScreen extends StatefulWidget {
  final String username;
  final String mobileNo;

  const SecondScreen({super.key, required this.username, required this.mobileNo});



  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    print('UserName ${widget.username}');
    print('mobile ${widget.mobileNo}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Login Details'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [Text(widget.username),
            Text(widget.mobileNo)],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('-------------> FAB Clicked');
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UserDetails(),
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
