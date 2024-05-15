import 'package:flutter/material.dart';

void main() {
  runApp(TemperatureConverter());
}

class TemperatureConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Temperature',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TemperaturePage(),
    );
  }
}

class TemperaturePage extends StatefulWidget {
  @override
  _TemperaturePageState createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  double input = 0;
  double output = 0;
  bool isFtoC = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                var rv = double.tryParse(text);
                if (rv != null) {
                  setState(() {
                    this.input = rv;
                  });
                }
              },
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem(child: Text("Fahrenheit to Celsius"), value: "FtoC",),
                DropdownMenuItem(child: Text("Celsius to Fahrenheit"), value: "CtoF",),
              ],
              onChanged: (value) {
                setState(() {
                  isFtoC = value == "FtoC";
                });
              },
              value: isFtoC ? "FtoC" : "CtoF",
            ),
            ElevatedButton(
              child: Text("Convert"),
              onPressed: () {
                setState(() {
                  this.output = isFtoC
                      ? (this.input - 32) * (5/9)
                      : (this.input * 9/5) + 32;
                });
              },
            ),
            Text((this.output != null ? this.output.toStringAsFixed(2) : "") + "°"),
          ],
        ),
      ),
    );
  }
}


