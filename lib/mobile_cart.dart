import 'package:flutter/material.dart';
import 'cart_item_list.dart';
import 'check_out.dart';
import 'mobile_dine_in.dart';

class MobileCartItemList extends StatelessWidget {
  const MobileCartItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Card(
          color: const Color.fromRGBO(255, 255, 255, 0.9),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MobileDineInButton(),
                CartItemList(),
                CheckOut(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
