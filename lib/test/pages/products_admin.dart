import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(tabs: <Widget>[
            Tab(text: 'Create Product', icon: Icon(Icons.create),),
            Tab(text: 'My Products', icon: Icon(Icons.list),),
          ],),
        ),
        drawer: Drawer(
          child: Column(children: <Widget>[
            AppBar(title: Text('Choose'), automaticallyImplyLeading: false,),
            ListTile(
              title: Text('All Products'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            )
          ],),
        ),
        body: TabBarView(children: <Widget>[
          ProductCreate(),
          ProductList()
        ],),
      )
    );
  }
}