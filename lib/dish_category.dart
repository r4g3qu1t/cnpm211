import 'package:flutter/material.dart';
import 'data.dart';

List<Tab> categoryTabGenerator(double height) {
  List<Tab> list = [];
  for (int i = 0; i < dishCategory.length; i++) {
    list.add(
      Tab(
        height: height * 0.2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CategoryCard(index: i),
        ),
      ),
    );
  }
  return list;
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    required this.index,
    Key? key,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(dishCategory[index].svgSrc),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  dishCategory[index].categoryName,
                  style: const TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
