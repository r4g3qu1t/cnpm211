import 'package:cnpm/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'data.dart';

class MobileDineInButton extends StatelessWidget {
  MobileDineInButton({
    Key? key,
  }) : super(key: key);

  createPopup(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/icons/dine_in_popup.png'),
                      fit: BoxFit.cover)),
            ),
          );
        });
  }

  final textController = TextEditingController();
  createAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        final tableController = TextEditingController();
        final noteController = TextEditingController();
        return AlertDialog(
          title: const Text("Chọn bàn"),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: [
                TextField(
                  controller: tableController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    hintText: "Nhập số bàn",
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    maxLines: null,
                    controller: noteController,
                    expands: true,
                    decoration: const InputDecoration(
                      hintText: "Nhập ghi chú",
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Xác nhận"),
              ),
              onPressed: () {
                createPopup(context);
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
                child: Text("Chọn bàn"),
              ))
        ],
      ),
    );
  }
}
