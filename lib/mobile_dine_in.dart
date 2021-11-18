import 'package:cnpm/order.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data.dart';

class MobileDineInButton extends StatelessWidget {
  const MobileDineInButton({
    Key? key,
  }) : super(key: key);

  createPopup(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          Future.delayed(Duration(seconds: 4), () {
            Navigator.of(context).pop(true);
          });
          return Dialog(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
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
            title: Text("Insert your table number!"),
            content: TextField(controller: tablenumber),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text("Confirm Order"),
                color: Colors.green[700],
                textColor: Colors.white,
                onPressed: () {
                  createPopup(context);
                  Future.delayed(Duration(seconds: 4), () {
                    Navigator.of(context).pop(true);
                  });
                },
              ),
              MaterialButton(
                  elevation: 5.0,
                  child: Text("Cancel"),
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
