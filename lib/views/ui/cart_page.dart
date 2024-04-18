import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/common_button.dart';
import 'package:flutter_e_commerce_app/providers/cart_provider.dart';
import 'package:provider/provider.dart';

import '../shared/appStyle.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // CommonButton(height: MediaQuery.sizeOf(context).height*0.07,title: 'Favourite', onTap: (){}),
          Flexible(
            child: ListView.builder(
                itemCount: cartProvider.cartList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var cartItem = cartProvider.cartList[index];
                  return Column(
                    children: [
                      Card(
                        child: ListTile(
                          title: Text(cartItem.name),
                          subtitle: Text(cartItem.description),
                          leading: Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(cartItem.image),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          trailing: Column(
                            children: [
                              Text('\u{20B9}${cartItem.price.toString()}'),
                              // getIncreDecreWidget(cartItem.quantity),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Text(
            'Total  \u{20B9}${cartProvider.totalPrice().toString()}',
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          CommonButton(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.07,
              title: 'Invoice',
              onTap: () {}),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: Container(
          //     width: MediaQuery.sizeOf(context).width,
          //     height: MediaQuery.sizeOf(context).height * 0.07,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10),
          //         gradient: const LinearGradient(colors: [
          //           Color.fromRGBO(34, 34, 49, 1.0),
          //           Color.fromRGBO(117, 118, 140, 0.6),
          //         ])),
          //     child: Center(
          //       child: Text(
          //         'Total  \u{20B9}${cartProvider.totalPrice().toString()}',
          //         style: const TextStyle(
          //           color: Colors.white,
          //           fontSize: 25,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          //getIncreDecreWidget(cartProvider.cartList[1].quantity),
        ],
      ),
    );
  }

  getIncreDecreWidget(int index) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Row(
      children: [
        TextButton(
            onPressed: () {
              cartProvider.decrementQty(cartProvider.cartList[index].quantity);
            },
            child: const Text('-')),
        Text(cartProvider.cartList[0].quantity.toString()),
        TextButton(
            onPressed: () {
              cartProvider.incrementQty(cartProvider.cartList[index].quantity);
            },
            child: Text('+')),
      ],
    );
  }
}
