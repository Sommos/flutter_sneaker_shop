import 'package:flutter/material.dart';

import '../models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan 1 Mid SE Craft",
      price: "189.99",
      description: "The perforated forefoot, for example, is overlaid atop the toe cap, which is easy to notice as the two color a light grey and white, respectively. Elsewhere, the rear is essentially shifted downwards, with the Wings-marked heel tab taking a position similar to that of a low-top. And aside from the subtle warm-toned stitching and exposed foam collar, the rest of the construction is quite standard in its various neutrals.",
      imagePath: "lib/images/air_jordan_1_mid_SE_craft.png",
    ),
    Shoe(
      name: "Air Jordan 1 Retro High OG",
      price: "84.99",
      description: "The Womens Air Jordan 1 High OG Reverse Laney is the second iteration of the Air Jordan 1 to receive the Laney treatment, after Nike previously released the sneakers in mens sizing in 2013. This version of the Laney features a leather upper, with blue and yellow color blocking, and a black and red Nike Air logo on the tongue.",
      imagePath: "lib/images/air_jordan_1_retro_high_OG.png",
    ),
    Shoe(
      name: "Air Max 1 Shima Shima",
      price: "149.95",
      description: "We saw the beloved brown tones of the Shima Shima pack leap back onto the Air Trainer 1 in 2022, with the OG crowd praising the return of what used to be a European exclusive. While this Air Force 1 is not exactly a direct retro of the 2003 editions, it does combine the different colour schemes for what will be a hybrid of the two.",
      imagePath: "lib/images/air_max_1_shima_shima.png",
    ),
    Shoe(
      name: "Nike Air Max 90",
      price: "124.99",
      description: "The classic Air Max 90 Trainers from Nike feature a soft foam midsole with a visible air unit on three sides to deliver optimal cushioning and response with every step. ",
      imagePath: "lib/images/nike_air_max_90.png",
    ),
    Shoe(
      name: "Zoom Freak 4 'Cookies And Cream'",
      price: "99.97",
      description: "Giannis is an incessant storm of stamina and skill that keeps coming at opponents for 4 quarters or more. The forward-thinking design of his latest signature shoe helps propel you down the court in a lightweight fit that moves with you.",
      imagePath: "lib/images/zoom_freak_4_'cookies_and_cream'.png",
    ),
  ];

  // list of cart items
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    if (userCart.contains(shoe)) {
      userCart.remove(shoe);
    } else {
      debugPrint("Item does not contain any item in cart");
    }
    notifyListeners();
  }
}