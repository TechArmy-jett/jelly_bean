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
          children: <Widget>[
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.done, color: Colors.white,),
                  XBox(5),
                  Text('Done', style: TextStyle(color: Colors.white),),
                  Expanded(child: Text('')),
                  Icon(Icons.more_vert, color: Colors.white,)
                ],
              ),
            ),
            YBox(5),
            Container(
              color: Colors.white12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('My Local Profile'),
                  Expanded(child: Text('')),
                  Icon(Icons.contacts)
                ],
              ),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                  ),
                ),
                YBox(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('PHONE'),
                    Divider(
                      color: Colors.blue,
                      thickness: 1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Phone',
                        ),
                      ),
                    ),
                    XBox(10),
                    Expanded(
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
                YBox(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('EMAIL'),
                    Divider(
                      color: Colors.blue,
                      thickness: 1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                    ),
                    XBox(10),
                    Expanded(
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
                YBox(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('ADDRESS'),
                    Divider(
                      color: Colors.blue,
                      thickness: 1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Address',
                        ),
                      ),
                    ),
                    XBox(10),
                    Expanded(
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
                FlatButton(
                  onPressed: () {},
                  child: Text('Add Organization'),
                ),
                RaisedButton(
                    onPressed: null,
                    child: Text(
                      'Add another Field',
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            )),
          ],
        ),
      )),
    );
  }
}
