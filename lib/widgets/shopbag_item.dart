import 'package:flutter/material.dart';

class CartPdt extends StatelessWidget {
  final String id;
  final String productId;
  final int price;
  final int quantity;
  final String name;
  final String image;

  CartPdt(this.id, this.productId, this.name, this.price, this.quantity,
      this.image);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: FittedBox(
            child: Text('$price\€'),
          ),
        ),
        title: Text(name),
        subtitle: Text('Total: ${(price * quantity)}\€'),
        trailing: Text('$quantity'),
      ),
    );
  }
}
