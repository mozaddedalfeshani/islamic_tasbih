import 'package:flutter/material.dart';
import 'package:notepad/boxb.dart';
import 'package:notepad/routes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _num = 0;
  bool light = false;
  bool transfer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("C O U N T E R"),
        // actions: [
        //   InkWell(
        //     onTap: () {
        //       setState(() {
        //         if (transfer = true) {
        //           transfer = true;
        //           Navigator.pushNamed(context, MyRoutes.profile);
        //         } else {}
        //       });
        //       print(transfer);
        //     },
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Icon(
        //         Icons.person,
        //         size: 40,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      // backgroundColor: Colors.grey.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(),

          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 25,
                    offset: const Offset(5, 5),
                  ),

                  //top right

                  // ignore: prefer_const_constructors
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 25,
                    offset: Offset(-5, -1),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  '$_num',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 80,
                  ),
                ),
              ),
            ),
          ),
//            Spacer(),

          Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
            child: Container(
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    blurRadius: 25,
                    offset: const Offset(5, 5),
                  ),

                  //top right

                  // ignore: prefer_const_constructors
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 25,
                    offset: Offset(-5, -1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  NeuBox(
                    child: InkWell(
                      onTap: (() {
                        setState(() {
                          _num = 0;
                        });
                      }),
                      child: Icon(
                        Icons.exposure_zero_outlined,
                        size: 80,
                        color: Colors.red.shade600,
                      ),
                    ),
                    height: 80,
                    width: 110,
                    enterwidth: 8,
                  ),
                  NeuBox(
                    child: InkWell(
                      onTap: (() {
                        setState(() {
                          _num--;
                          if (_num < 0) {
                            _num = 0;
                          }
                        });
                      }),
                      child: Icon(
                        Icons.remove,
                        size: 80,
                        color: Colors.blueAccent.shade400,
                      ),
                    ),
                    height: 80,
                    width: 110,
                    enterwidth: 8,
                  ),
                  NeuBox(
                    child: InkWell(
                      onTap: (() {
                        setState(() {
                          _num++;
                        });
                      }),
                      child: Icon(
                        Icons.add,
                        size: 80,
                        color: Colors.green.shade600,
                      ),
                    ),
                    height: 80,
                    width: 110,
                    enterwidth: 8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
