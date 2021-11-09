import 'package:flutter/material.dart';
import 'model.dart';

// List<DishCategory> dishCategory = List.generate(
//   5,
//   (cateIndex) => DishCategory(
//     cateIndex,
//     "Type $cateIndex",
//     "assets/icons/burger_beer.svg",
//     List.generate(
//       9,
//       (dishIndex) => DishItem(
//           cateIndex * 10 + dishIndex,
//           "Dish ${cateIndex * 10 + dishIndex}",
//           10.0,
//           "assets/icons/chinese_noodles.svg"),
//     ),
//   ),
// );

List<DishItem> itemofType01 = [
  DishItem(
      101, 'Trà Sữa Kem Trứng Cháy', 29000, 'assets/icons/burger_beer.svg'),
  DishItem(102, 'Trà Sữa Oreo Chesse', 31000, 'assets/icons/burger_beer.svg'),
  DishItem(103, 'Trà Sữa Lúa Mạch Kem Trứng Cháy', 29000,
      'assets/icons/burger_beer.svg'),
  DishItem(
      104, 'Trà Sữa Lài Kem Trứng Cháy', 29000, 'assets/icons/burger_beer.svg'),
  DishItem(105, 'Matcha Olong Nướng', 31000, 'assets/icons/burger_beer.svg'),
  DishItem(106, 'Trà Sữa Sốt Khoai Môn', 29000, 'assets/icons/burger_beer.svg'),
  DishItem(
      107, 'Olong Sữa Kem Trứng Cháy', 29000, 'assets/icons/burger_beer.svg'),
  DishItem(108, 'Trà Sữa Sốt Xoài', 29000, 'assets/icons/burger_beer.svg'),
  DishItem(109, 'Trà Sữa Sốt Việt Quất', 29000, 'assets/icons/burger_beer.svg'),
  DishItem(110, 'Trà Sữa Sốt Dâu', 29000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 2
List<DishItem> itemofType02 = [
  DishItem(201, 'Hồng Trà Sủi Bọt', 15000, 'assets/icons/burger_beer.svg'),
  DishItem(202, 'Trà Xanh Lài', 15000, 'assets/icons/burger_beer.svg'),
  DishItem(203, 'Trà Gạo Rang Nhật Bản', 15000, 'assets/icons/burger_beer.svg'),
  DishItem(
      204, 'Trà Olong Thiết Quan Âm', 15000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 3
List<DishItem> itemofType03 = [
  DishItem(
      301, 'Trà Sữa Trân Châu Đài Loan', 22000, 'assets/icons/burger_beer.svg'),
  DishItem(302, 'Trà Sữa Phô Mai Viên', 25000, 'assets/icons/burger_beer.svg'),
  DishItem(303, 'Trà Sữa Full Topping', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(
      304, 'Trà Sữa Sương Sáo Thảo Mộc', 22000, 'assets/icons/burger_beer.svg'),
  DishItem(305, 'Trà Sữa Lài Đậu Biết', 25000, 'assets/icons/burger_beer.svg'),
  DishItem(306, 'Trà Sữa Socola', 27000, 'assets/icons/burger_beer.svg'),
  DishItem(307, 'Trà Sữa Matcha', 29000, 'assets/icons/burger_beer.svg'),
  DishItem(308, 'Trà Sữa Olong Thiết Quan Âm', 25000,
      'assets/icons/burger_beer.svg'),
  DishItem(309, 'Trà Sữa Lúa Mạch Rang', 25000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 4
List<DishItem> itemofType04 = [
  DishItem(401, 'Sữa Tươi Trân Châu Đường Đen', 29000,
      'assets/icons/burger_beer.svg'),
  DishItem(402, 'Cacao Sữa Tươi Kem Trứng Alley', 35000,
      'assets/icons/burger_beer.svg'),
  DishItem(403, 'Matcha Sữa Tươi Kem Trứng Alley', 35000,
      'assets/icons/burger_beer.svg'),
  DishItem(404, 'Sữa Tươi Khoai Môn Trân Châu', 35000,
      'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 5
List<DishItem> itemofType05 = [
  DishItem(501, 'Thanh Trà Đào Tươi', 27000, 'assets/icons/burger_beer.svg'),
  DishItem(
      502, 'Trà Đào Cam Sả Nha Đam', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(503, 'Lục Nghiên Ổi Hồng Thanh Long Đỗ', 39000,
      'assets/icons/burger_beer.svg'),
  DishItem(
      504, 'Thanh Trà Táo Xanh Kiwi', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(505, 'Trà Vải Hoa Lài', 29000, 'assets/icons/burger_beer.svg'),
  DishItem(506, 'Lục Nghiên Nhiệt Đới ', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(507, 'Thanh Trà Việt Quất ', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(508, 'Trà Kumquat Cam Vàng ', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(509, 'Trà Hoa Hồng Lệ Chi ', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(510, 'Trà Chanh Leo Dứa ', 39000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 6
List<DishItem> itemofType06 = [
  DishItem(601, 'Sữa Chua Việt Quất', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(602, 'Sữa Chua Kiwi', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(603, 'Sữa Chua Dâu Ổi', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(604, 'Sữa Chua Chanh Leo Dứa', 39000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 7
List<DishItem> itemofType07 = [
  DishItem(
      701, 'Kimbap Chiên Xù - 6 Cuộn', 27000, 'assets/icons/burger_beer.svg'),
  DishItem(702, 'Kimbap Truyền Thống - 6 Cuộn', 20000,
      'assets/icons/burger_beer.svg'),
  DishItem(
      703, 'Kimbap Bò Phô Mai - 6 Cuộn', 27000, 'assets/icons/burger_beer.svg'),
  DishItem(
      704, 'Kimbap Gà Phô Mai - 6 Cuộn', 25000, 'assets/icons/burger_beer.svg'),
  DishItem(705, 'Kimbap Gà Sốt Chanh Dây - 6 Cuộn', 25000,
      'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 8
List<DishItem> itemofType08 = [
  DishItem(801, 'Miến Trộn Hàn Quốc', 55000, 'assets/icons/burger_beer.svg'),
  DishItem(802, 'Mì Ý Bò Bằm', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(803, 'Nui Xào Bò', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(
      804, 'Mì Trộn Thanh Cua Chiên Ù', 49000, 'assets/icons/burger_beer.svg'),
  DishItem(
      805, 'Mì Trộn Gà Sốt Teriyaki', 52000, 'assets/icons/burger_beer.svg'),
  DishItem(806, 'Mì Jajang', 55000, 'assets/icons/burger_beer.svg'),
  DishItem(807, 'Mì Trộn Bò Bulgogi', 52000, 'assets/icons/burger_beer.svg'),
  DishItem(808, 'Mì Trộn Truyền Thống', 49000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 9
List<DishItem> itemofType09 = [
  DishItem(901, 'Mực Khoanh Chiên Xù', 40000, 'assets/icons/burger_beer.svg'),
  DishItem(902, 'Gà Lắc Phô Mai', 39000, 'assets/icons/burger_beer.svg'),
  DishItem(
      903, 'Gà Chiên Sốt Chua Ngọt', 55000, 'assets/icons/burger_beer.svg'),
  DishItem(904, 'Khoai Tây Lắc', 30000, 'assets/icons/burger_beer.svg'),
  DishItem(905, 'Khoai Tây Chiên', 27000, 'assets/icons/burger_beer.svg'),
  DishItem(
      906, 'Gà Chiên Sốt Cay Hàn Quốc', 55000, 'assets/icons/burger_beer.svg'),
  DishItem(907, 'Gà Chiên Sốt Mật Ong', 55000, 'assets/icons/burger_beer.svg'),
  DishItem(908, 'Set Gà 1 Vị', 119000, 'assets/icons/burger_beer.svg'),
  DishItem(909, 'Set Gà 2 Vị', 199000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 10
List<DishItem> itemofType10 = [
  DishItem(1001, 'Bánh Gạo Chả Cá', 44000, 'assets/icons/burger_beer.svg'),
  DishItem(1002, 'Bánh Gạo Phô Mai Chả Cá Đút Lò', 55000,
      'assets/icons/burger_beer.svg'),
  DishItem(
      1003, 'Bánh Gạo Phô Mai Thịt Bò', 49000, 'assets/icons/burger_beer.svg'),
  DishItem(1004, 'Tobokki Ramen', 52000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 11
List<DishItem> itemofType11 = [
  DishItem(1101, 'Mì Cay Bò', 55000, 'assets/icons/burger_beer.svg'),
  DishItem(1102, 'Mì Cay Hải Sản', 59000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 12
List<DishItem> itemofType12 = [
  DishItem(1201, 'Canh Kim Chi', 45000, 'assets/icons/burger_beer.svg'),
  DishItem(1202, 'Canh Rong Biển', 39000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 13
List<DishItem> itemofType13 = [
  DishItem(1301, 'Cơm Trứng Cuộn', 42000, 'assets/icons/burger_beer.svg'),
  DishItem(1301, 'Cơm Trộn Hàn Quốc', 49000, 'assets/icons/burger_beer.svg'),
  DishItem(
      1303, 'Cơm Trộn Gà Sốt Teriyaki', 49000, 'assets/icons/burger_beer.svg'),
  DishItem(1304, 'Cơm Trộn Bò Bulgogi', 52000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 14
List<DishItem> itemofType14 = [
  DishItem(
      1401, 'Lẩu Tobokki Hàn Quốc', 139000, 'assets/icons/burger_beer.svg'),
  DishItem(1402, 'Lẩu Kim Chi Thập Cẩm', 179000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 15
List<DishItem> itemofType15 = [
  DishItem(
      1501, 'Salad Bò Sốt Dầu Giấm', 45000, 'assets/icons/burger_beer.svg'),
  DishItem(
      1502, 'Salad Trứng Sốt Mayonnaise', 35000, 'assets/icons/burger_beer.svg')
];

// cac mon an thuoc loai 16
List<DishItem> itemofType16 = [
  DishItem(1601, 'Tuyệt Đỉnh Món Hàn - Set 1', 65000,
      'assets/icons/burger_beer.svg'),
  DishItem(1602, 'Tuyệt Đỉnh Món Hàn - Set 2', 72000,
      'assets/icons/burger_beer.svg'),
  DishItem(1603, 'Tuyệt Đỉnh Món Hàn - Set 3', 72000,
      'assets/icons/burger_beer.svg'),
  DishItem(1604, 'Tuyệt Đỉnh Món Hàn - Set 4', 74000,
      'assets/icons/burger_beer.svg'),
  DishItem(1605, 'Tuyệt Đỉnh Món Hàn - Set 5', 78000,
      'assets/icons/burger_beer.svg'),
  DishItem(1606, 'Tuyệt Đỉnh Món Hàn - Box 6', 149000,
      'assets/icons/burger_beer.svg'),
  DishItem(1607, 'Tuyệt Đỉnh Món Hàn - Box 7', 179000,
      'assets/icons/burger_beer.svg'),
  DishItem(1608, 'Tuyệt Đỉnh Món Hàn - Box 8', 189000,
      'assets/icons/burger_beer.svg'),
  DishItem(1609, 'Tuyệt Đỉnh Món Hàn - Box 9', 199000,
      'assets/icons/burger_beer.svg')
];

//danh sach cac loai
List<DishCategory> dishCategory = [
  DishCategory(
      1, 'TRÀ SỮA SÁNG TẠO', 'assets/icons/chinese_noodles.svg', itemofType01),
  DishCategory(
      2, 'TRÀ NGUYÊN CHẤT', 'assets/icons/chinese_noodles.svg', itemofType02),
  DishCategory(3, 'TRÀ SỮA', 'assets/icons/chinese_noodles.svg', itemofType03),
  DishCategory(4, 'SỮA TƯƠI', 'assets/icons/chinese_noodles.svg', itemofType04),
  DishCategory(
      5, 'TRÀ TRÁI CÂY', 'assets/icons/chinese_noodles.svg', itemofType05),
  DishCategory(6, 'SỮA CHUA', 'assets/icons/chinese_noodles.svg', itemofType06),
  DishCategory(7, 'KIMBAP - CƠM CUỘN HÀN QUỐC',
      'assets/icons/chinese_noodles.svg', itemofType07),
  DishCategory(
      8, 'MÌ - NUI - MIẾN', 'assets/icons/chinese_noodles.svg', itemofType08),
  DishCategory(
      9, 'MÓN ĂN VẶT', 'assets/icons/chinese_noodles.svg', itemofType09),
  DishCategory(
      10, 'BÁNH GẠO', 'assets/icons/chinese_noodles.svg', itemofType10),
  DishCategory(
      11, 'MÌ CAY 7 CẤP ĐỘ', 'assets/icons/chinese_noodles.svg', itemofType11),
  DishCategory(12, 'SOUP', 'assets/icons/chinese_noodles.svg', itemofType12),
  DishCategory(13, 'CƠM', 'assets/icons/chinese_noodles.svg', itemofType13),
  DishCategory(
      14, 'LẨU TOBOKKI', 'assets/icons/chinese_noodles.svg', itemofType14),
  DishCategory(15, 'SALAD', 'assets/icons/chinese_noodles.svg', itemofType15),
  DishCategory(16, 'TUYỆT ĐỈNH MÓN HÀN', 'assets/icons/chinese_noodles.svg',
      itemofType16)
];

class SelectedItemProvider extends ChangeNotifier {
  int tempDetailQuantity = 1;
  void increaseTemp() {
    tempDetailQuantity++;
    notifyListeners();
  }

  void decreaseTemp() {
    tempDetailQuantity == 1 ? {} : tempDetailQuantity--;
    notifyListeners();
  }

  List<CartItem> selectedItem = [];
  void add(int cateIndex, int index) {
    CartItem newItem = CartItem(
        dishCategory[cateIndex].listDishItem[index], tempDetailQuantity);
    int idx = selectedItem.indexWhere((element) =>
        element.selectedDish.itemID == newItem.selectedDish.itemID);
    idx == -1
        ? selectedItem.add(newItem)
        : selectedItem[idx].quantity += tempDetailQuantity;
    tempDetailQuantity = 1;
    notifyListeners();
  }

  void decrease(int index) {
    selectedItem[index].quantity == 1 ? {} : selectedItem[index].quantity--;
    notifyListeners();
  }

  void increase(int index) {
    selectedItem[index].quantity++;
    notifyListeners();
  }

  void remove(int id) {
    selectedItem.removeWhere((element) => element.selectedDish.itemID == id);
    selectedItem.join();
    notifyListeners();
  }

  int totalitem() {
    int total = 0;
    for (int i = 0; i < selectedItem.length; i++) {
      total += selectedItem[i].quantity;
    }
    return total;
  }

  double total() {
    double _total = 0;
    for (int i = 0; i < selectedItem.length; i++) {
      _total += selectedItem[i].quantity * selectedItem[i].selectedDish.price;
    }
    return _total;
  }
}
