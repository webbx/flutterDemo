import 'package:flutter/material.dart';

//stless 快捷生成命令

// 抽象商品类
class Product {
    final String title; // 商品名称
    final String description; // 商品描述

    Product(this.title, this.description);
}

void main() {
    runApp(MaterialApp(
        title: '导航的数据传递与接收',
        home: ProductList(
            products: List.generate(30, (i) =>
                Product('第$i件商品', '这是商品详情编号，编号为：$i')
            )
        ),
    ));
}

class ProductList extends StatelessWidget {
    // 生成一个Product的list
    final List<Product> products;
    
    ProductList({Key key, @required this.products}):super(key:key);
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: new AppBar(title: new Text('商品列表')),
            body: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                    return ListTile(
                        title: Text(products[index].title),
                        onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => ProductDetail(product: products[index])
                            ));
                        },
                    );
                },
            ),
        );
    }
}

class ProductDetail extends StatelessWidget {
    // 接收的参数
    final Product product;
    // 构造函数
    ProductDetail({Key key, @required this.product}):super(key:key);
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: new AppBar(title: new Text('${product.title}的商品详情')),
            body: new Center(
                child: new Text('${product.description}'),
            ),
        );
    }
}
