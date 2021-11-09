import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../data.dart';

Widget _decreaseButton(BuildContext context) {
  return IconButton(
    iconSize: 20,
    onPressed: () {
      context.read<SelectedItemProvider>().decreaseTemp();
    },
    icon: const Icon(Icons.remove),
  );
}

Widget _increaseButton(BuildContext context) {
  return IconButton(
    iconSize: 20,
    color: Colors.red,
    onPressed: () {
      context.read<SelectedItemProvider>().increaseTemp();
    },
    icon: const Icon(Icons.add),
  );
}

void addToCart(context, cateIndex, index) {
  double _height = 400;
  double _width = 700;
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        "ADD TO CART",
        style: TextStyle(color: Colors.red),
      ),
      content: SizedBox(
          height: _height,
          width: _width,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SvgPicture.asset(
                        dishCategory[cateIndex].listDishItem[index].svgSrc,
                        width: _width * 0.4,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Name: ",
                              style: TextStyle(fontSize: 20),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              dishCategory[cateIndex]
                                  .listDishItem[index]
                                  .dishName,
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Price: ",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              dishCategory[cateIndex]
                                      .listDishItem[index]
                                      .price
                                      .toString() +
                                  " VND",
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "Quantity: ",
                              style: TextStyle(fontSize: 20),
                            ),
                            _decreaseButton(context),
                            Text(
                              context
                                  .watch<SelectedItemProvider>()
                                  .tempDetailQuantity
                                  .toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                            _increaseButton(context),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Expanded(
                child: SizedBox(
                  width: _width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Description',
                        style: TextStyle(color: Color.fromRGBO(30, 30, 30, 1)),
                      ),
                      SizedBox(height: 10),
                      Expanded(
                          child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text('Mua đi, cảm ơn nhiều'),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          )),
      actions: [
        ElevatedButton(
          onPressed: () {
            context.read<SelectedItemProvider>().tempDetailQuantity = 1;
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<SelectedItemProvider>().add(cateIndex, index);
            Navigator.pop(context);
          },
          child: const Text("Add to cart"),
        ),
      ],
    ),
  );
}
