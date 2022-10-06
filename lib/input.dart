import 'package:flutter/material.dart';
import 'package:notepad/boxb.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  bool light = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: NeuBox(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 250,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Name', labelText: 'Enter Name'),
                  ),
                ),
                Column(
                  children: [
                    Expanded(
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              light = true;
                            });
                          },
                          child: Icon(Icons.done),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          height: 100,
          width: 350,
          enterwidth: 15),
    );
  }
}
