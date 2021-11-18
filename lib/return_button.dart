import 'package:flutter/material.dart';
import 'main.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Card(
        color:const Color.fromRGBO(255, 255, 255, 0.8),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const MyHomePage()));
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
          ),
        ),
      ),
    );
  }
}
