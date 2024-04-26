import 'package:flutter/material.dart';
import 'package:untitled/modals/shoe.dart';

class Cart extends ChangeNotifier{

  List<Shoe> shoeshop=[
    Shoe(name: 'Air Force 1', price: '400', imagepath: 'assets/airforce.png', description: 'best shoe ever made',),
    Shoe(name: 'Air Force 1 Blue', price: '450', imagepath: 'assets/airforce.png', description: 'best shoe ever made2',),
    Shoe(name: 'Air Force 1 Black', price: '050', imagepath: 'assets/airforce.png', description: 'best shoe ever made3',),
    Shoe(name: 'Air Force 1 Brown', price: '450', imagepath: 'assets/airforce.png', description: 'best shoe ever made2',),
  ];

  //list of items in user cart
  List<Shoe> userCart=[];
  //get the shoes for sale
  List<Shoe> getShoeList(){
    return shoeshop;
  }

  //get cart
  List<Shoe> getCart(){
    return userCart;
  }

  //add item to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //remove item form cart
  void removeItemToCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}