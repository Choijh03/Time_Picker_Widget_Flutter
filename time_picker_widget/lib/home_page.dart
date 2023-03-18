import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //create TimeOfDay variable
  TimeOfDay _timeOfDay = TimeOfDay.now();

  //show time picker method
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //display chosen time
            Text(
              _timeOfDay.format(context).toString(),
              style: TextStyle(fontSize: 35),
            ),

            //button
            MaterialButton(
              onPressed: _showTimePicker,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Pick Time',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
