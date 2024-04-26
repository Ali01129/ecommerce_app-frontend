import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/modals/cart.dart';

import '../modals/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key,required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemToCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath,),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(icon: Icon(Icons.delete),onPressed: removeFromCart,)
      ),
    );
  }
}

