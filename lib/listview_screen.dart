import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       home: Scaffold(
         body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Text('Номер        $index'),
                selected: index == _selectedindex,
                onTap: () {
                  setState() {
                    _selectedindex = index;
                  }
                });
          },
        )
       ));

  }
}
