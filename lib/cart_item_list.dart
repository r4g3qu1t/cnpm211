import 'package:flutter/material.dart';
import 'data.dart';
import 'package:provider/provider.dart';

Widget _decreaseButton(int index, BuildContext context) {
  return IconButton(
    onPressed: () {
      context.read<SelectedItemProvider>().decrease(index);
    },
    icon: const Icon(Icons.remove),
  );
}

Widget _increaseButton(int index, BuildContext context) {
  return IconButton(
    color: Colors.red,
    onPressed: () {
      context.read<SelectedItemProvider>().increase(index);
    },
    icon: const Icon(Icons.add),
  );
}

class CartItemList extends StatelessWidget {
  const CartItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 7,
      child: ListView.builder(
        itemCount: context.watch<SelectedItemProvider>().selectedItem.length,
        controller: ScrollController(),
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Dismissible(
              // confirmDismiss: Future(true),
              direction: DismissDirection.startToEnd,
              key: Key(context
                  .watch<SelectedItemProvider>()
                  .selectedItem[index]
                  .selectedDish
                  .itemID
                  .toString()),
              onDismissed: (direction) {
                int id = context
                    .read<SelectedItemProvider>()
                    .selectedItem[index]
                    .selectedDish
                    .itemID;
                // print(id);
                context.read<SelectedItemProvider>().remove(id);
              },
              background: Container(
                decoration: BoxDecoration(
                  color: Colors.green[900],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    "Trượt sang phải để xóa",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ),
              child: Card(
                elevation: 50,
                child: SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(context
                            .watch<SelectedItemProvider>()
                            .selectedItem[index]
                            .selectedDish
                            .svgSrc),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "${index + 1}. ${context.watch<SelectedItemProvider>().selectedItem[index].selectedDish.dishName}",
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _decreaseButton(index, context),
                                    Text(
                                      "${context.watch<SelectedItemProvider>().selectedItem[index].quantity}",
                                    ),
                                    _increaseButton(index, context),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "${context.watch<SelectedItemProvider>().selectedItem[index].selectedDish.price * context.watch<SelectedItemProvider>().selectedItem[index].quantity} VND",
                                            style: const TextStyle(
                                                color: Colors.red,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
