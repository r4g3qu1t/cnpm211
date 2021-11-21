import 'package:cnpm/data.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:provider/provider.dart';

Widget paymentMethods(BuildContext context) {
  //anh nen
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/background.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    //phan noi dung
    child: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 1.0),
      //chia cot
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Tieu de
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white.withOpacity(0.85)),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
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
                const Expanded(
                  child: Text(
                    "Phương thức thanh toán",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                )
              ],
            ),
          ),
          //Cac hinh thuc thanh toan
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2.0),
            height: MediaQuery.of(context).size.height * 0.81,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white.withOpacity(0.75)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 8),
                //Vi dien tu
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      child: InkWell(
                        onTap: () {
                          paySuccessPopup(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          constraints: const BoxConstraints(
                              maxWidth: 100, maxHeight: 100),
                          child: const Image(
                            image: AssetImage("assets/images/momo.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      child: InkWell(
                        onTap: () {
                          paySuccessPopup(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          constraints: const BoxConstraints(
                              maxWidth: 100, maxHeight: 100),
                          child: const Image(
                            image: AssetImage("assets/images/viettelpay.png"),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      child: InkWell(
                        onTap: () {
                          paySuccessPopup(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          constraints: const BoxConstraints(
                              maxWidth: 100, maxHeight: 100),
                          child: const Image(
                            image: AssetImage("assets/images/zalopay.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                //Credit card
                ElevatedButton(
                  onPressed: () {
                    paySuccessPopup(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "THANH TOÁN BẰNG CREDIT CARD",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const Spacer(flex: 1),
                //Thanh toan tien mat
                ElevatedButton(
                  onPressed: () {
                    paySuccessPopup(context);
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
                    child: Text(
                      "THANH TOÁN BẰNG TIỀN MẶT",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const Spacer(flex: 8),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

paySuccessPopup(BuildContext context) {
  context.read<SelectedItemProvider>().clearcart();
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            width: 450,
            height: 450,
            child: Column(
              children: [
                //Payment successful image
                Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage(
                            'assets/icons/payment_successful.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //Back to home page button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text("Quay lại"),
                      ),
                    ),
                    //Check out button
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          feedbackPopup(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text("Check out"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      });
}

feedbackPopup(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            width: 450,
            height: 450,
            child: Column(
              children: [
                //Payment successful image
                Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage('assets/icons/feedback.png'),
                          fit: BoxFit.cover)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //Checkout button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MyHomePage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          children: const [
                            Text("Thoát", textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ),
                    //Feedback button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          feedbackField(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0),
                          child: Text("Phản hồi", textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      });
}

feedbackField(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            width: 650,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // tittle
                Container(
                  width: 600,
                  height: 60,
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.bottomLeft,
                  child: const Text(
                      'Để lại ý kiến của bạn về trải nghiệm ở đây:',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                // text field
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.shade700),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const TextField(
                        expands: true,
                        minLines: null,
                        maxLines: null,
                        decoration: InputDecoration.collapsed(
                            hintText:
                                "Mr Tí Đô xin cảm ơn những đóng góp quý giá của bạn!"),
                      ),
                    ),
                  ),
                ),

                // submit button

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text("Gửi đánh giá", textAlign: TextAlign.center),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
