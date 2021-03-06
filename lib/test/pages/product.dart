import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  
  ProductPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(imageUrl),
              Container(padding: EdgeInsets.all(10.0), child: Text(title),),
              Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  child: Text('DELETE'),
                  onPressed: () => Navigator.pop(context, true),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}