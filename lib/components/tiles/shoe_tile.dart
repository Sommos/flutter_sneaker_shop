import 'package:flutter/material.dart';

import '../../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;

  const ShoeTile({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25.0,),
      width: 280.0,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe picture
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              shoe.imagePath, 
              height: 200, 
              width: 200,
            ),
          ),

          // description
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              shoe.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(
                      height: 5.0,
                    ),

                    // shoe name
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    ),
          
                    const SizedBox(
                      height: 5.0,
                    ),
          
                    // price
                    Text(
                      "£${shoe.price}",
                    ),
                  ],
                ),
                
                // plus button
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12.0),
                      topLeft: Radius.circular(12.0),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),


          // button to add to cart
        ],
      ),
    );
  }
}