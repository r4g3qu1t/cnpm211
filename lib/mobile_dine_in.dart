import 'package:cnpm/order.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data.dart';

class MobileDineInButton extends StatelessWidget {
  MobileDineInButton({
    Key? key,
  }) : super(key: key);

  final textController = TextEditingController();
  createAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Ghi chú"),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.5,
            child: TextField(
              controller: textController,
              maxLines: null,
              expands: true,
              decoration: const InputDecoration(hintText: "Nhập ghi chú"),
            ),
          ),
          actions: [
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Xác nhận"),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Hủy"),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pop(MaterialPageRoute(builder: (context) => OrderPage()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 10),
                  Text("Quay lại"),
                ],
              ),
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              ),
              Text(
                "Giỏ hàng (${context.watch<SelectedItemProvider>().totalitem()})",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                createAlertDialog(context);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("Ghi chú"),
              ))
        ],
      ),
    );
  }
}
