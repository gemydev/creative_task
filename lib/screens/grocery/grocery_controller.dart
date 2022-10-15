import 'package:creative_company_task/data/models/response/CategoryResponse.dart';
import 'package:creative_company_task/data/models/response/OfferResponse.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/models/response/AddressResponse.dart';
import '../../data/models/response/DealsResponse.dart';

class GroceryController extends GetxController {
  static final controller = Get.find<GroceryController>();

  late TextEditingController searchController;

  List<AddressResponse> addresses = [];
  List<OfferResponse> offers = [];
  List<CategoryResponse> categories = [];
  List<DealsResponse> deals = [];

  getAddresses() {
    addresses.add(AddressResponse(
        home: "Home Address",
        street: "Mostafa St No:2",
        building: "Floor 2, Office 11"));
    addresses.add(AddressResponse(
        home: "Home", street: "Mostafa St", building: "Office 11"));
    addresses.add(AddressResponse(
        home: "Address", street: "St No:2", building: "Office 11"));
  }

  getCats() {
    categories.add(CategoryResponse(catName: "Steak"));
    categories.add(CategoryResponse(catName: "Vegetables"));
    categories.add(CategoryResponse(catName: "Beverages"));
    categories.add(CategoryResponse(catName: "Fish"));
    categories.add(CategoryResponse(catName: "Juice"));
    categories.add(CategoryResponse(catName: "Steak"));
    categories.add(CategoryResponse(catName: "Vegetables"));
    categories.add(CategoryResponse(catName: "Beverages"));
    categories.add(CategoryResponse(catName: "Fish"));
    categories.add(CategoryResponse(catName: "Juice"));
  }

  getDeals() {
    deals.add(DealsResponse(
        title: "Summer Sun Ice Cream Pack",
        pieces: "5",
        newPrice: "12",
        oldPrice: "18",
        time: "15 Minutes Away"));
    deals.add(DealsResponse(
        title: "Summer Sun Ice Cream Pack",
        pieces: "5",
        newPrice: "12",
        oldPrice: "18",
        time: "15 Minutes Away"));
  }

  getOffers() {
    offers.add(OfferResponse(oldPrice: "18", newPrice: "12"));
  }

  @override
  void onInit() {
    super.onInit();
    searchController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
