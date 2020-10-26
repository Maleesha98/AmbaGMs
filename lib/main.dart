import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MaterialApp(
  home: RetroAlarm(),
));
class RetroAlarm extends StatefulWidget {
  @override
  _RetroAlarmState createState() => _RetroAlarmState();
}

class _RetroAlarmState extends State<RetroAlarm> {
  bool isPressedAM = false;
  bool isPressedPM = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/wall.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('MARCUS:',
                      style: TextStyle(fontFamily: 'Joystick',
                          fontSize: 18.0,
                          color: Color.fromRGBO(0, 143, 255, 0.8))
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("You have 8 hours to sleep",
                      style: TextStyle(fontFamily: 'Joystick',
                          fontSize: 18.0,
                          color: Colors.white)),
                ),
                SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 180,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image(
                          image: AssetImage('Assets/man.jpg'
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("Assets/window.png"),
                          fit: BoxFit.cover,)),
                      height: 80,
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(0, -10, 0, -10),
                        color: Colors.transparent,
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Text('Set an App',
                        style: TextStyle(
                            fontFamily: 'Joystick',
                            fontSize: 10.0,
                            color: Colors.yellow,
                        ),
                        )
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                SizedBox(height: 0.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(0, -10, 0, -10),
                        color: Colors.transparent,
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Image(
                          image: AssetImage('Assets/up.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            child: FlatButton(
                              padding: EdgeInsets.fromLTRB(0, -10, 0, -10),
                              color: Colors.transparent,
                              onPressed: () {
                                // Respond to button press
                              },
                              child: Image(
                                image: AssetImage('Assets/up.png'),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            child: FlatButton(
                              padding: EdgeInsets.fromLTRB(0, -10, 0, -10),
                              color: Colors.transparent,
                              onPressed: () {
                                // Respond to button press
                              },
                              child: Image(
                                image: AssetImage('Assets/up.png'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(

                  child: Row(
                    children: [
                      Text("09",
                          style: TextStyle(fontFamily: 'Joystick',
                              fontSize: 85.0,
                              color: Colors.white)),
                      Text(":",
                          style: TextStyle(fontFamily: 'Joystick',
                              fontSize: 85.0,
                              color: Colors.white)),
                      Text("15",style: TextStyle(fontFamily: 'Joystick',
                          fontSize: 85.0,
                          color: Colors.white)),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(-5, -5, -5, -5),
                        color: Colors.transparent,
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Image(
                          image: AssetImage('Assets/down.png'),
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          child: FlatButton(
                            padding: EdgeInsets.all(-2),
                            color: Colors.transparent,
                            onPressed: () {
                              // Respond to button press
                            },
                            child: Image(
                              image: AssetImage('Assets/down.png'),
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          child: FlatButton(
                            padding: EdgeInsets.all(-2),
                            color: Colors.transparent,
                            onPressed: () {
                              // Respond to button press
                            },
                            child: Image(
                              image: AssetImage('Assets/down.png'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isPressedAM = !isPressedAM;
                          isPressedPM = !isPressedAM;
                        });
                      },
                      child: Text("AM",
                          style: isPressedAM?
                          TextStyle(
                              fontFamily: 'Joystick',
                              fontSize: 60.0,
                              color: Colors.yellow):
                          TextStyle(
                              fontFamily: 'Joystick',
                              fontSize: 40.0,
                              color: Colors.white)
                      ),
                    ),
                    SizedBox(width: 50),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          isPressedAM = !isPressedAM;
                          isPressedPM = !isPressedAM;
                        });
                      },
                      child: Text("PM",
                          style: isPressedPM?
                          TextStyle(
                              fontFamily: 'Joystick',
                              fontSize: 60.0,
                              color: Colors.yellow):
                          TextStyle(
                              fontFamily: 'Joystick',
                              fontSize: 40.0,
                              color: Colors.white)
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  child: FlatButton(
                    padding: EdgeInsets.fromLTRB(-5, -5, -5, -5),
                    color: Colors.transparent,
                    onPressed: () {
                      // Respond to button press
                    },
                    child: Image(
                      image: AssetImage('Assets/Button.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
class RetroHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/wall.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('MARCUS:',
                      style: TextStyle(fontFamily: 'Joystick',
                          fontSize: 18.0,
                          color: Color.fromRGBO(0, 143, 255, 0.8))
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("I will wake you on time",
                      style: TextStyle(fontFamily: 'Joystick',
                          fontSize: 18.0,
                          color: Colors.white)),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 180,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image(
                      image: AssetImage('Assets/man.jpg'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                   padding: const EdgeInsets.symmetric(
                       horizontal: 10,
                   vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("Assets/window.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  child: Row(
                    children: [
                      Text("09",
                          style: TextStyle(fontFamily: 'Joystick',
                              fontSize: 60.0,
                              color: Colors.white)),
                      Text(":",
                          style: TextStyle(fontFamily: 'Joystick',
                              fontSize: 60.0,
                              color: Colors.white)),
                      Text("15",style: TextStyle(fontFamily: 'Joystick',
                          fontSize: 60.0,
                          color: Colors.white)),
                      SizedBox(width: 40),
                      Column(
                        children: [
                          SizedBox(height: 30),
                          Stack(
                            children: [
                            Container(
                              alignment : Alignment(-1, -1),
                              child :Text("AM",style: TextStyle(fontFamily: 'Joystick',
                                  fontSize: 32.0,
                                  color: Colors.white)),
                            ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                FlatButton(onPressed: (){},
                    child: Image(
                      image: AssetImage('Assets/Add Button.png'),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  },
}*/