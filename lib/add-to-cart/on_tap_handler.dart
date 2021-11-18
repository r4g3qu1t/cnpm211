import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
  Size size = MediaQuery.of(context).size;
  double _height = size.height * 0.7, _width = size.width * 0.6;
  showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        "CHI TIẾT MÓN ĂN",
        style: TextStyle(color: Colors.red),
      ),
      content: SizedBox(
        height: _height,
        width: _width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  dishCategory[cateIndex].listDishItem[index].svgSrc,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              DetailName(cateIndex: cateIndex, index: index),
              const Divider(
                color: Colors.grey,
              ),
              const DetailQuantity(),
              const Divider(
                color: Colors.grey,
              ),
              DetailPrice(cateIndex: cateIndex, index: index),
              const Divider(
                color: Colors.grey,
              ),
              const Text(
                'Mô tả',
                style: TextStyle(
                    color: Color.fromRGBO(30, 30, 30, 1),
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              const Text('Mua đi, cảm ơn nhiều'),
            ],
          ),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            context.read<SelectedItemProvider>().tempDetailQuantity = 1;
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Hủy"),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            context.read<SelectedItemProvider>().add(cateIndex, index);
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Thêm"),
          ),
        ),
      ],
    ),
  );
}

class DetailName extends StatelessWidget {
  const DetailName({
    required this.cateIndex,
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index, cateIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            dishCategory[cateIndex].listDishItem[index].dishName,
            style: const TextStyle(
                color: Colors.red, fontSize: 35, fontWeight: FontWeight.w400),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class DetailPrice extends StatelessWidget {
  const DetailPrice({
    required this.cateIndex,
    required this.index,
    Key? key,
  }) : super(key: key);
  final int cateIndex, index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              "Giá: ",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              (dishCategory[cateIndex].listDishItem[index].price *
                          context
                              .watch<SelectedItemProvider>()
                              .tempDetailQuantity)
                      .toString() +
                  " VND",
              style: const TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
        )
      ],
    );
  }
}

class DetailQuantity extends StatelessWidget {
  const DetailQuantity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              "Số lượng: ",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        _decreaseButton(context),
        Flexible(
          child: Text(
            context.watch<SelectedItemProvider>().tempDetailQuantity.toString(),
            style: const TextStyle(fontSize: 20),
          ),
        ),
        _increaseButton(context),
      ],
    );
  }
}
