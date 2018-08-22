import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  HomePage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      drawer: Drawer(
        child: Column(children: <Widget>[
          AppBar(title: Text('Choose'), automaticallyImplyLeading: false,),
          ListTile(
            title: Text('Manage Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/admin');
            },
          )
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          addProduct({
            'title': 'Chocolate',
            'image': 'https://via.placeholder.com/1336x768'
          });
        },
      ),
      body: ProductManager(products, addProduct, deleteProduct),
    );
  }
}