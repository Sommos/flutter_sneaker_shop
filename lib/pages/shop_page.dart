import 'package:flutter/material.dart';

import '../components/tiles/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12.0,),
          margin: const EdgeInsets.symmetric(horizontal: 25.0,),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Search",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0,),
          child: Text(
            "Everyone flies... some fly longer than others",
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),

        // pictures
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "What's Hot",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
              Text(
                "See All", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10.0,),

        // list of shoes
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder:(
              context, 
              index,
            ) {
              Shoe shoe = Shoe(
                name: "Air Jordan 1 Mid SE Craft", 
                price: "189.99", 
                description: "The perforated forefoot, for example, is overlaid atop the toe cap, which is easy to notice as the two color a light grey and white, respectively. Elsewhere, the rear is essentially shifted downwards, with the Wings-marked heel tab taking a position similar to that of a low-top. And aside from the subtle warm-toned stitching and exposed foam collar, the rest of the construction is quite standard in its various neutrals.", 
                imagePath: "lib/images/air_jordan_1_mid_SE_craft.png",
              );
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 25.0,
            left: 25.0,
            right: 25.0,
          ),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}