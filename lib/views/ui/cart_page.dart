import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/common_button.dart';
import 'package:flutter_e_commerce_app/providers/cart_provider.dart';
import 'package:provider/provider.dart';
import 'favourite_page.dart';

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
        backgroundColor: const Color.fromRGBO(117, 118, 140, 0.6),
        actions: [
          TextButton(onPressed: (){
            Navigator.push( context,
                MaterialPageRoute(builder: (context) => const FavouritePage()),
            );
          },
             child: const Text('My favorites', style: TextStyle(fontSize: 18, color: Colors.black),)),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Text(
                'Total  \u{20B9}${cartProvider.totalPrice().toString()}',
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CommonButton(
                height: MediaQuery.sizeOf(context).height*0.08,
                width: MediaQuery.sizeOf(context).width*0.4,
                title: 'Invoice',
                onTap: () {
                  // Navigator.pushReplacement(context,
                  //     MaterialPageRoute(builder: (context) => const HomePage()));
                }),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          cartProvider.cartList.isEmpty
              ? const Center(
                child: Text(
                    'Add To items',
                    style: TextStyle(color: Colors.blue),
                  ),
              )
              : Flexible(
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.width * 0.2,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(cartItem.image),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                trailing: Column(
                                  children: [
                                    Text(
                                        '\u{20B9}${cartItem.price.toString()}',style: const TextStyle(fontSize: 22),),
                                    // getIncreDecreWidget(cartItem.quantity),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
          Column(
            children: [

            ],
          ),
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
