import 'package:flutter/material.dart';
import 'package:cnpm/dish_item.dart';
import 'mobile_return_button.dart';
import 'return_button.dart';
import 'dine_in.dart';
import 'cart_item_list.dart';
import 'dart:ui';
import 'check_out.dart';

var size = window.physicalSize;

class OrderPage extends StatelessWidget {
  OrderPage({Key? key}) : super(key: key);
  final double _height = size.height, _width = size.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < 800
            ? NarrowScreen(height: _height, width: _width)
            : WideScreen(height: _height, width: _width);
      },
    ));
  }
}

class WideScreen extends StatelessWidget {
  const WideScreen({
    Key? key,
    required double height,
    required double width,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: _height,
        width: _width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ReturnButton(),
                  DishItemWidget(height: _height),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Card(
                color:const Color.fromRGBO(255, 255, 255, 0.8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      DineInButton(),
                      CartItemList(),
                      CheckOut(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NarrowScreen extends StatelessWidget {
  const NarrowScreen({
    Key? key,
    required double height,
    required double width,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          height: _height,
          width: _width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const MobileReturnButton(),
              DishItemWidget(height: _height),
            ],
          ),
        ),
      ),
    );
  }
}
