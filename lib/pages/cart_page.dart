import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/modals/shoe.dart';

import '../components/cart_item.dart';
import '../modals/cart.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My Cart",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount: value.getCart().length,
              itemBuilder: (context,index){
              Shoe individualshoe=value.getCart()[index];
              return CartItem(shoe: individualshoe,);
              },
            ),
          )
        ],
      ),
    ),);
  }
}
