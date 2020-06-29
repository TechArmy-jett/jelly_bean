import 'package:flutter/material.dart';

class ToggleSwitch extends StatefulWidget {

  @override
  _ToggleSwitchState createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool isOff = true;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 80,
      color: Colors.white,
      height: 25,
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: (){
                setState(() {
                  isOff = !isOff;

                });
              },
              child: Container(
                color: isOff ? Colors.grey[600] : Colors.black45,
                child: Center(
                  child: Text(
                      'OFF',
                    style: TextStyle(
                      fontSize: 13,
                      color: !isOff ? Colors.black45 : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: (){
                setState(() {
                  isOff = !isOff;

                });
              },
              child: Container(
                color: isOff ? Colors.black45 : Colors.blue,
                child: Center(
                  child: Text(
                      'ON',
                    style: TextStyle(
                      fontSize: 13,
                      color: isOff ? Colors.black45 : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
