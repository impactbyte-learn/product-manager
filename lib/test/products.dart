import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, { this.deleteProduct }) {
    print('Constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Detail'),
                onPressed: () {
                  Navigator.pushNamed(context, '/product' + index.toString())
                  .then((data) {
                    if(data == true) {
                      deleteProduct(index);
                    }
                  });
                },
              )
            ],
          ),
        ],
      )
    );
  }

  _buildProductList() {
    Widget productCard = Center(child: Text('No product found'),);
    if(products.length > 0) {
      return ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print('Build');
    return _buildProductList();
  }
}