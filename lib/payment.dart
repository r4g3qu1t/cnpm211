import 'package:flutter/material.dart';
import 'main.dart';

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
                    "PAYMENT METHODS",
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
                    Container(
                      padding: const EdgeInsets.all(7.0),
                      child: ElevatedButton(
                        onPressed: () {
                          paySuccessPopup(context);
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/momo.jpg"),
                                  fit: BoxFit.scaleDown)),
                          width: 190,
                          height: 190,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(7.0),
                      child: ElevatedButton(
                        onPressed: () {
                          paySuccessPopup(context);
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/viettelpay.png"),
                                  fit: BoxFit.scaleDown)),
                          width: 190,
                          height: 190,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(7.0),
                      child: ElevatedButton(
                        onPressed: () {
                          paySuccessPopup(context);
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/zalopay.png"),
                                  fit: BoxFit.scaleDown)),
                          width: 190,
                          height: 190,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                //Credit card
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        paySuccessPopup(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        width: 665,
                        height: 80,
                        child: const Center(
                            child: Text("THANH TOÁN BẰNG CREDIT CARD",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 22))),
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1),
                //Thanh toan tien mat
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        paySuccessPopup(context);
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        width: 665,
                        height: 80,
                        child: const Center(
                            child: Text("THANH TOÁN BẰNG TIỀN MẶT",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 22))),
                      ),
                    ),
                  ],
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
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
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
                          fit: BoxFit.cover)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //Back to home page button
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.arrow_back),
                              SizedBox(width: 10, height: 25),
                              Text("Quay lại"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Check out button
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          feedbackPopup(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              SizedBox(width: 1, height: 25),
                              Text("Check out", textAlign: TextAlign.center),
                            ],
                          ),
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
          child: Container(
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
                    Container(
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
                              SizedBox(width: 1, height: 25),
                              Text("Check out", textAlign: TextAlign.center),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //Feedback button
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          feedbackField(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              SizedBox(width: 1, height: 25),
                              Text("Feedback", textAlign: TextAlign.center),
                            ],
                          ),
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
          child: Container(
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
                Container(
                  width: 600,
                  height: 280,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green.shade700),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    maxLines: 10,
                    decoration: InputDecoration.collapsed(
                        hintText:
                            "Mr Tí Đô xin cảm ơn những đóng góp quý giá của bạn!"),
                  ),
                ),

                // submit button

                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        SizedBox(width: 1, height: 25),
                        Text("Gửi đánh giá", textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
