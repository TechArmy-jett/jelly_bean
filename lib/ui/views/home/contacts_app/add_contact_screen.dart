import 'package:flutter/material.dart';
import 'package:jellybean/utils/screen_util.dart';
import 'package:jellybean/utils/utils.dart';

class AddContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: kScreenHeight,
        width: kScreenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Color.fromRGBO(37, 165, 225, 1),
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: (){

                    },
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  XBox(5),
                  Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(child: Text('')),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            YBox(5),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                          ),
                        ),
                      ),


                      XBox(10),

                      Container(
                          child: Image(
                            image: AssetImage(AppImages.avatar),
                            height: 50,
                            width: 50,
                          )),
                    ],
                  ),

                  YBox(5),

                 Padding(
                   padding: const EdgeInsets.symmetric( vertical: 5),
                   child: Text(
                     'Add organization',
                     style: TextStyle(
                       fontSize: 14,
                       color: Colors.grey[700],
                     ),
                   ),
                 ),

                  YBox(25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('PHONE',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(37, 165, 225, 1),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(37, 165, 225, 1),
                        thickness: 1,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Phone',
                          ),
                        ),
                      ),
                      XBox(10),
                      Expanded(
                        flex: 1,
                          child: new DropdownButton<String>(
                            hint: Text('MOBILE'),
                            items: <String>['MOBILE', 'HOME', 'WORK']
                                .map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ))
                    ],
                  ),
                  YBox(25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('EMAIL',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(37, 165, 225, 1),
                        ),
                      ),
                      Divider(
                        color: Color.fromRGBO(37, 165, 225, 1),
                        thickness: 1,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      XBox(10),
                      Expanded(
                        flex: 1,
                          child: new DropdownButton<String>(
                            hint: Text('HOME'),
                            items: <String>['HOME', 'WORK'].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ))
                    ],
                  ),
                  YBox(25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('ADDRESS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(37, 165, 225, 1),
                      ),
                      ),
                      Divider(
                        color: Color.fromRGBO(37, 165, 225, 1),
                        thickness: 1,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Address',
                          ),
                        ),
                      ),
                      XBox(10),
                      Expanded(
                        flex: 1,
                          child: new DropdownButton<String>(
                            hint: Text('MOBILE'),
                            items: <String>['MOBILE', 'HOME', 'WORK']
                                .map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(
                                  value,
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ))
                    ],
                  ),

                  YBox(15),

                  RaisedButton(
                      onPressed: null,
                      child: Text(
                        'Add another Field',
                        style: TextStyle(color: Colors.black),
                      )),

                  YBox(15),

                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
