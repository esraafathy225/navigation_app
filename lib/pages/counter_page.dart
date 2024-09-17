import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0 ;
  //function
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }
  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You pushed the button this many times: ',
              style: TextStyle(fontSize: 18),
            ),
            Text(_counter.toString(), style: TextStyle(fontSize: 40)),
            ElevatedButton(onPressed: _incrementCounter, child: Text('Increment!'))
          ],
        ),
      ),
    );
  }
}