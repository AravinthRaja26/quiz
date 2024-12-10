import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
Future<void> showMyDialog(BuildContext context,{int? mark,VoidCallback? onPressed,int? totalMark}) async {

  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: const Text('Result',style: TextStyle(color: Colors.black,fontSize: 16)),
        content:  SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('You have getting $mark out of $totalMark',style: TextStyle(color: Colors.black,fontSize: 14),),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(

            child: const Text('cancel'),
            onPressed: () async {
              await Navigator.of(context).maybePop();

            },
          ),
          TextButton(

            onPressed:onPressed?? () async {

            },

            child: const Text('Again Start'),
          ),
        ],
      );
    },
  );
}
