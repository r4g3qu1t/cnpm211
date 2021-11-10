import 'dart:ui';
import 'package:cnpm/add-to-cart/on_tap_handler.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.cateIndex,
    required this.index,
  }) : super(key: key);

  final int cateIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        hoverColor: Colors.green[900],
        borderRadius: BorderRadius.circular(5),
        onTap: () => {addToCart(context, cateIndex, index)},
        child: Card(
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        constraints:
                            const BoxConstraints(maxWidth: 300, minWidth: 200),
                        child: Image(
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                          image: AssetImage(dishCategory[cateIndex]
                              .listDishItem[index]
                              .svgSrc),
                        ),
                        // width: 300,
                        // color: Colors.amber,
                        // child: SvgPicture.asset(
                        //   dishCategory[cateIndex].listDishItem[index].svgSrc,
                        //   fit: BoxFit.fitHeight,
                        // ),
                      ),
                    ),
                    // Spacer(),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            dishCategory[cateIndex]
                                .listDishItem[index]
                                .dishName,
                            // maxLines: 1,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "${dishCategory[cateIndex].listDishItem[index].price} VND",
                          style: const TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          context
                              .read<SelectedItemProvider>()
                              .add(cateIndex, index);
                        },
                        icon: const Icon(Icons.add),
                        color: Colors.green[900],
                      ),
                    )
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
