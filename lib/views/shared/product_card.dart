import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/providers/cart_provider.dart';
import 'package:flutter_e_commerce_app/providers/favourite_provider.dart';
import 'package:flutter_e_commerce_app/views/shared/appStyle.dart';
import 'package:provider/provider.dart';
import '../../models/product_card_model.dart';

class ProductCard extends StatefulWidget {
  final ProductSneakersModel item;
  const ProductCard({super.key, required this.item});
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isLiked = false;
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 20, 0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 0.6,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.23,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.item.image),
                        ),
                      ),
                    ),
                    Positioned(
                        right: 10,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              favouriteProvider.toggelFavourite(widget.item);
                            });
                          },
                          child: favouriteProvider.isExist(widget.item)
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(Icons.favorite_outline),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.item.name,
                      style: appStyleHL(36, Colors.black, FontWeight.bold, 1.1),
                    ),
                    Text(
                      widget.item.category,
                      style: appStyleHL(18, Colors.grey, FontWeight.bold, 1.5),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\u{20B9}${widget.item.price.toString()}',
                            ///  \u{20B9}-- for rupees
                            style: appStyle(
                                30, Colors.black, FontWeight.w600),
                          ),
                          Row(
                            children: [
                              TextButton(
                                child:
                                cartProvider.cartList.contains(widget.item)
                              ? Text('Added',style: appStyle(18, Colors.red, FontWeight.w500),)
                              : Text('Add to cart',style: appStyle(18, Colors.blue, FontWeight.w500),),
                                onPressed: () {
                                  if(cartProvider.cartList.contains(widget.item)){
                                     setState(() {
                                       cartProvider.cartList.remove(widget.item);
                                     });
                                  }
                                  else{
                                    setState(() {
                                      cartProvider.cartList.add(widget.item);
                                    });
                                  }
                                },
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              // Text(
                              //   'Colors ',
                              //   style:
                              //       appStyle(18, Colors.grey, FontWeight.w500),
                              // ),
                              // const SizedBox(
                              //   width: 5,
                              // ),
                              // ChoiceChip(
                              //   label: const Text(" "),
                              //   selected: selected,
                              //   visualDensity: VisualDensity.compact,
                              //   selectedColor: Colors.black,
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
