import 'package:flutter/material.dart';
import 'package:pos/dish_item.dart';
import 'return_button.dart';
import 'dine_in.dart';
import 'cart_item_list.dart';
import 'check_out.dart';


class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  final double _height = 700, _width = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              SizedBox(
                height: _height,
                width: _width * 0.65,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ReturnButton(height: _height),
                    DishItemWidget(height: _height),
                  ],
                ),
              ),
              SizedBox(
                height: _height,
                width: _width * 0.35,
                child: Card(
                  elevation: 50,
                  child: Column(
                    children: const [
                      //DINE IN ////////////////////////
                      DineInButton(),
                      //SELECTED ITEM///////////////////////////
                      CartItemList(),
                      //PAYMENT///////////////////////////////////////
                      CheckOut(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}