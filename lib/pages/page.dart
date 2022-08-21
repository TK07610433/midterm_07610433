import 'package:flutter/material.dart';

import '../Convers.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _HomePageState();
}

class _HomePageState extends State<homepage> {
  final _controller = TextEditingController();
  final _convers = Convers();
  var _button = false;
  var _feedbackText = '';
  var _feedbackText1 = '';
  var _feedbackText2 = '';
  var _feedbackText3 = '';
  var _feedbackText4 = '';
  var _feedbackText5 = '';
  void handleClickGuess() {
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbackText = 'Input error, please try again';
      });
    } else {
      var result1 = _convers.celsiustofahrenheit(temp);
      setState(() {
        _feedbackText = '$temp Celsius = $result1 Fahrenheit';
      });
    }
  }

  void handleClickGuess1() {
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbackText1 = 'Input error, please try again';
      });
    } else {
      var result2 = _convers.celsiustokelvin(temp);
      setState(() {
        _feedbackText1 = '$temp Celsius = $result2 Kelvin';
      });
    }
  }

  void handleClickGuess2() {
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbackText2 = 'Input error, please try again';
      });
    } else {
      var result3 = _convers.fahrenheittocelsius(temp);
      setState(() {
        _feedbackText2 = '$temp Fahrenheit = $result3 Celsius';
      });
    }
  }

  void handleClickGuess3() {
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbackText3 = 'Input error, please try again';
      });
    } else {
      var result4 = _convers.fahrenheittokelvin(temp);
      setState(() {
        _feedbackText3 = '$temp Fahrenheit = $result4 Kelvin';
      });
    }
  }

  void handleClickGuess4() {
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbackText4 = 'Input error, please try again';
      });
    } else {
      var result5 = _convers.kelvintocelsius(temp);
      setState(() {
        _feedbackText4 = '$temp Kelvin = $result5 Celsius';
      });
    }
  }

  void handleClickGuess5() {
    var temp = double.tryParse(_controller.text);
    if (temp == null) {
      print('Input error');
      setState(() {
        _feedbackText5 = 'Input error, please try again';
      });
    } else {
      var result6 = _convers.kelvintofahrenheit(temp);
      setState(() {
        _feedbackText5 = '$temp Kelvin = $result6 Fahrenheit';
      });
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm Exam 07610433'),
        backgroundColor: Colors.green
      ),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent, //สีพื้นหลังของ Container
          border: Border.all(
            width: 2.0,
            color: Colors.deepPurple.shade200,
          ),
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text('Temperature Converter'),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature value to convert',
              ),

            ),
            // Callback function
            ElevatedButton(
              onPressed: handleClickGuess,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text('Celsius to Fahrenheit'),
            ),
            Text(_feedbackText),

            ElevatedButton(
              onPressed: handleClickGuess1,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text('Celsius to Kelvin'),
            ),
            Text(_feedbackText1),

            ElevatedButton(
              onPressed: handleClickGuess2,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text('Fahrenheit to Celsius'),
            ),
            Text(_feedbackText2),

            ElevatedButton(
              onPressed: handleClickGuess3,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text('Fahrenheit to Kelvin'),
            ),
            Text(_feedbackText3),

            ElevatedButton(
              onPressed: handleClickGuess4,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text('Kelvin to Celsius'),
            ),
            Text(_feedbackText4),

            ElevatedButton(
              onPressed: handleClickGuess5,
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
              ),
              child: const Text('Kelvin to Fahrenheit'),
            ),
            Text(_feedbackText5),
          ],
        ),
      ),
    );
  }
}
