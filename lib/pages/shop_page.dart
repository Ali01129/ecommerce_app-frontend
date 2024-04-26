import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/components/shoe_tile.dart';
import 'package:untitled/modals/cart.dart';
import 'package:untitled/modals/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addShoetoCart(Shoe shoe){
   Provider.of<Cart>(context,listen: false).addItemToCart(shoe);
   //alert user shoe added to cart
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Sucessfully Added!"),
      content: Text("Check your cart"),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context,value,child)=> Column(
          children: [
            //search bar


            Container(
              padding: EdgeInsets.all(18),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Search"),
                  Icon(Icons.search)
                ],
              ),
            ),


            //message

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Text(
                "Everone files.. some fly longer than others",
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),

            //hot picks
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Hot Picks 🔥",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context,index){
                  Shoe shoe=value.getShoeList()[index];
                  return ShoeTile(
                    onTap: ()=>addShoetoCart(shoe),
                    shoe: shoe  ,
                  );
                },),)
          ],
        ),
    );
  }
}
