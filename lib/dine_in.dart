import 'package:flutter/material.dart';
import 'data.dart';
import 'package:provider/provider.dart';

class DineInButton extends StatelessWidget {
  const DineInButton({
    Key? key,
  }) : super(key: key);

  createAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        final textController = TextEditingController();
        return AlertDialog(
          title: const Text("Ghi chú"),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            child: TextField(
              maxLines: null,
              controller: textController,
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
          const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
            size: 30,
          ),
          Text(
            "Giỏ hàng (${context.watch<SelectedItemProvider>().totalitem()})",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Expanded(child: Container()),
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
