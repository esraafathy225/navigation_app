import 'package:flutter/material.dart';

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  State<UserInputPage> createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  var myController = TextEditingController();
  String _inputMessage = '';
  void _getInputMessage(){
    setState(() {
      _inputMessage=myController.text;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    labelText: 'Enter your name'),
              ),
            ),
            SizedBox(height: 12,),
            Text(_inputMessage),
            SizedBox(height: 12,),
            ElevatedButton(onPressed: _getInputMessage, child: Text('Tap'))
          ],
        ),
      ),
    );
  }
}
