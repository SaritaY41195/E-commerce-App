import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/common/common_button.dart';
import 'package:flutter_e_commerce_app/providers/cart_provider.dart';
import 'package:flutter_e_commerce_app/views/ui/home_page.dart';
import 'package:provider/provider.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import '../../common/commomnContainer.dart';
import '../../common/constant.dart';
import 'favourite_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Razorpay _razorPay = Razorpay();
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        backgroundColor: const Color.fromRGBO(117, 118, 140, 0.6),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FavouritePage()),
                );
              },
              child: const Text(
                'My favorites',
                style: TextStyle(fontSize: 18, color: Colors.black),
              )),
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
              height: MediaQuery.sizeOf(context).height * 0.08,
              width: MediaQuery.sizeOf(context).width * 0.4,
              title: 'Invoice',
              onTap: () {
                var options = {
                  'key': RAZOR_PAY_KEY,
                  'amount': cartProvider.totalPrice().toStringAsFixed(2),
                  'name': RAZOR_PAY_APP_NAME,
                  'description': RAZOR_PAY_DESCRIPTION,
                  'timeOut': RAZOR_PAY_TIMEOUT,
                  'retry': {'enabled': true, 'max_count': 1},
                  'send_sms_hash': true,
                  'prefill': {
                    'contact': FirebaseAuth.instance.currentUser!.phoneNumber,
                    'email': FirebaseAuth.instance.currentUser!.email,
                  },
                  'external': {
                    'wallets': ['paytm']
                  }
                };
                _razorPay.on(
                    Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
                _razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS,
                    handlePaymentSuccessResponse);
                _razorPay.on(Razorpay.EVENT_EXTERNAL_WALLET,
                    handleExternalWalletSelected);

                _razorPay.open(options);
                _razorPay.clear();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
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
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '\u{20B9}${cartItem.price.toString()}',
                                      style: const TextStyle(fontSize: 22),
                                    ),
                                    Row(
                                      textDirection: TextDirection.ltr,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CommonContainer(
                                          height: 20,
                                          width: 30,
                                          onTap: () {
                                            cartProvider.incrementQty(
                                                cartItem.quantity);
                                          },
                                          child: const Center(
                                            child: Text(
                                              '-',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          cartItem.quantity.toString(),
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        CommonContainer(
                                          height: 20,
                                          width: 30,
                                          onTap: () {},
                                          child: const Center(
                                              child: Text(
                                            '+',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blue),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(color: Colors.grey.shade50,child: TextButton(onPressed: (){
                              cartProvider.removeCartData(cartItem);
                            }, child: Text('Remove'))),
                          ],
                        );
                      }),
                ),
        ],
      ),
    );
  }

  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    showAlertDialog(context, "Payment Failed",
        "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}");
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    print(response.data.toString());
    showAlertDialog(
        context, "Payment Successful", "Payment Id: ${response.paymentId}");
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    showAlertDialog(
        context, "External Wallet Selected", "${response.walletName}");
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    Widget continueButton =
        ElevatedButton(onPressed: () {}, child: const Text('Continue'));
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  getIncrementDecrementWidget(int index) {
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
