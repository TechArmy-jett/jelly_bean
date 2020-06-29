import 'package:flutter/material.dart';
import 'package:jellybean/utils/utils.dart';

class CallScreenPhoneApp extends StatefulWidget {
  @override
  _CallScreenPhoneAppState createState() => _CallScreenPhoneAppState();
}

class _CallScreenPhoneAppState extends State<CallScreenPhoneApp> {
  String number = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(8, 19, 23, 1),
      child: Column(
        children: <Widget>[
          YBox(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    number,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                InkWell(
                  onTap: (){
                    if (number.isNotEmpty){
                      setState(() {
                        number = number.substring(0, number.length-1);
                      });
                    }
                  },
                  child: Icon(
                    Icons.backspace,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '1' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '2' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '3' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          YBox(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '4' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '5' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '6' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          YBox(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '7' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '7',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '8' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '8',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '9' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '9',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          YBox(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '*' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '*',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.grey[600],
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '0' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: 40,
                        color: Color.fromRGBO(37, 165, 225, 1),
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    number = number + '#' ;
                  });
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey[700])),
                  child: Center(
                    child: Text(
                      '#',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.grey[600],
                        fontFamily: AppStrings.robotoMedium,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          YBox(30),
        ],
      ),
    );
  }
}
