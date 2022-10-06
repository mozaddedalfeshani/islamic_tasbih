import 'package:flutter/material.dart';
import 'package:notepad/boxb.dart';
import 'package:notepad/routes.dart';

class Normal extends StatefulWidget {
  const Normal({super.key});

  @override
  State<Normal> createState() => _NormalState();
}

class _NormalState extends State<Normal> {
  String name = 'Enter Name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: NeuBox(
                  child: Container(
                    child: Icon(
                      Icons.person,
                      size: 250,
                    ),
                  ),
                  height: 270,
                  width: 250,
                  enterwidth: 15),
            ),
            Container(
              child: NeuBox(
                  child: Text(
                    "$name",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  height: 100,
                  width: 250,
                  enterwidth: 10),
            ),
            NeuBox(
                child: Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.home);
                    },
                    child: Text(
                      "<",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
                height: 80,
                width: 80,
                enterwidth: 40),
          ],
        ),
      ),
    );
  }
}
