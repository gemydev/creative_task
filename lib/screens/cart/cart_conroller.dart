import 'package:creative_company_task/data/models/response/CartResponse.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  static final controller = Get.find<CartController>();

  RxInt allPrice = 0.obs;
  List<RxInt> counts = [];
  List<CartResponse> items = [];

  addPrice(int price) {
    allPrice += price;
  }

  subtractPrice(int price) {
    allPrice -= price;
  }

  addCustomCount(int indexOfItem) {
    counts[indexOfItem]++;
  }

  subtractCustomCount(int indexOfItem) {
    counts[indexOfItem]--;
  }

  getCarts() {
    items.add(
        CartResponse(price: 12, subTitle: "173 Grams", title: "Turkish Steak"));
    items.add(CartResponse(price: 30, subTitle: "785 Grams", title: "Steak"));
    items.add(CartResponse(price: 50, subTitle: "457 Grams", title: "Turkish"));
    items.add(CartResponse(
        price: 77, subTitle: "554 Grams", title: "Old Turkish Steak"));
    items.add(CartResponse(
        price: 19, subTitle: "96 Grams", title: "New Turkish Steak"));

    counts = List.generate(items.length, (index) => 1.obs);

  }

  calcPrice(List<CartResponse> items) {
    for (int i = 0; i > items.length; i++) {
      allPrice += items[i].price!;
    }
  }
}
