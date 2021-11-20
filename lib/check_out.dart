import 'package:flutter/material.dart';
import 'package:cnpm/data.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Tổng:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  context.watch<SelectedItemProvider>().total().toString() +
                      ' VND',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.red),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                height: 50,
                child: const Center(
                  child: Text("THANH TOÁN"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
