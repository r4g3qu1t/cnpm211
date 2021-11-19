import 'package:flutter/material.dart';
import 'data.dart';
import 'package:provider/provider.dart';

class DineInButton extends StatelessWidget {
  const DineInButton({
    Key? key,
  }) : super(key: key);

  createPopup(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          Future.delayed(const Duration(seconds: 4), () {
            Navigator.of(context).pop(true);
          });
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

  createAlertDialog(BuildContext context) {
    TextEditingController tablenumber = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Insert your table number!"),
            content: TextField(controller: tablenumber),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: const Text("Confirm Order"),
                color: Colors.green[700],
                textColor: Colors.white,
                onPressed: () {
                  createPopup(context);
                  Future.delayed(const Duration(seconds: 4), () {
                    Navigator.of(context).pop(true);
                  });
                },
              ),
              MaterialButton(
                  elevation: 5.0,
                  child: const Text("Cancel"),
                  color: Colors.blueGrey,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
            ],
          );
        });
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
                child: Text("Chọn bàn"),
              ))
        ],
      ),
    );
  }
}
