import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontSize: 48, fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(onPressed: _incrementCounter, child: Text('Increment')),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: _decrementCounter, child: Text('Decrement')),
              ],
            )
          ],
        ),
      ),
    );
  }

}