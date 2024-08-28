import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  //const PointsCounter({super.key});
  int teamA = 0;

  int teamB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              'Points Counter',
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Text(
                        '$teamA',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      ElevatedButton(
                        // style: ButtonStyle(
                        //   backgroundColor:
                        //       MaterialStateProperty.all(Colors.orange),
                        // ),
                        child: Text('Add 1 point ',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        onPressed: () {
                          setState(() {
                            teamA++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          //minimumSize: Size(150, 50),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                          //fixedSize:
                        ),
                        child: Text(
                          'Add 2 points ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            teamA += 2;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                        child: Text('Add 3 points ',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        onPressed: () {
                          setState(() {
                            teamA += 3;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 450,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Text(
                        '$teamB',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                        child: Text('Add 1 point ',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        onPressed: () {
                          setState(() {
                            teamB++;
                          }); //  parameter anonymous function
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                        child: Text('Add 2 points ',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        onPressed: () {
                          setState(() {
                            teamB += 2;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        ),
                        child: Text('Add 3 points ',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        onPressed: () {
                          setState(() {
                            teamB += 3;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              ElevatedButton(
                child: Text('Reset',
                    style: TextStyle(
                      fontSize: 20,
                    )),
                onPressed: () {
                  setState(() {
                    teamB = 0;
                    teamA = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
            ],
          ),
        ));
  }
}
