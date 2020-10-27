import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'RetroAlarm.dart';

void main() => runApp(MaterialApp(
  home: RetroHome(),
));

class RetroHome extends StatefulWidget {
  @override
  _RetroHomeState createState() => _RetroHomeState();
}

class _RetroHomeState extends State<RetroHome> {
  bool _value=true;

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
                Row(
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("Assets/window.png"),
                          fit: BoxFit.cover,
                    )),
                    child: Text('set'),)
                      ],
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
                      /*LiteRollingSwitch(
                        textSize: 10,
                        value: true,
                        textOn: "On",
                        textOff: "Off",
                        colorOn: Colors.deepOrange,
                        colorOff: Colors.lightBlue,
                        iconOn: Icons.alarm_on,
                        iconOff: Icons.alarm_off,
                      ),*/
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
                          Switch(value: _value,
                            onChanged: (val){
                              setState(() {
                                _value=val;
                              });
                            },
                          ),

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


                FlatButton(onPressed: (){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>RetroAlarm())
                  );
                },
                    child: Image(
                      image: AssetImage('Assets/Add Button.png'),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

