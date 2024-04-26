import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/modals/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //image

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(shoe.imagepath),
          ),

          //description

          Text(
            shoe.description,
            style: TextStyle(
              color: Colors.grey.shade600
            ),
          ),

          //price
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "\$"+shoe.price,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 5,)
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      color: Colors.black,
                    ),
                    child: const Icon(Icons.add,color: Colors.white,),
                  ),
                )
              ],
            ),
          ),
          //add to card
        ],
      ),
    );
  }
}
