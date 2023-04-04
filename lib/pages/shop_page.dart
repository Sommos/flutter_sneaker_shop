import 'package:flutter/material.dart';

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
            "Everyone flies... some fly logner than others",
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
            itemBuilder:(
              context, 
              index,
            ) {
              return ShoeTile();
            },
          ),
        ),
      ],
    );
  }
}