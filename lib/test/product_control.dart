import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        addProduct({
          'title': 'Chocolate',
          'image': 'https://via.placeholder.com/1336x768'
        });
      },
      child: Text('Add Product'),
    );
  }
}