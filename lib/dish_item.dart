import 'package:flutter/material.dart';
import 'add-to-cart/add_to_cart.dart';
import 'dish_category.dart';
import 'data.dart';

class DishItemWidget extends StatefulWidget {
  const DishItemWidget({required this.height, Key? key}) : super(key: key);

  final double height;
  @override
  _DishItemWidgetState createState() => _DishItemWidgetState();
}

class _DishItemWidgetState extends State<DishItemWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: dishCategory.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Card(
              elevation: 50,
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicatorWeight: 4.0,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.green[900],
                  isScrollable: true,
                  tabs: categoryTabGenerator(widget.height),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            // child: Container(
            //   color: Colors.black,
            // ),
            child: Card(
              elevation: 50,
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: dishItemGenerator(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<TabPage> dishItemGenerator() {
  List<TabPage> list = [];
  for (int cateIndex = 0; cateIndex < dishCategory.length; cateIndex++) {
    list.add(TabPage(cateIndex: cateIndex));
  }
  return list;
}

class TabPage extends StatefulWidget {
  const TabPage({required this.cateIndex, Key? key}) : super(key: key);
  final int cateIndex;

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GridView.builder(
      controller: ScrollController(),
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: dishCategory[widget.cateIndex].listDishItem.length,
      itemBuilder: (context, index) {
        return AddToCart(
          cateIndex: widget.cateIndex,
          index: index,
        );
      },
    );
  }
}
