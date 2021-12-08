import 'package:back/models/user_product.dart';

class OfferController {
  late List<UserProduct> product;
  late double off, minimumquantity
;

  OfferController({this.product = const [], off = 0.0, this.minimumquantity = 0.0});

  set setMinimumQuantity({double minimumquantity = 0.00}){
    this.minimumquantity = minimumquantity;
  }

  insertOffList() {
    double total = 0.0;
    for (var i in product) {
      total = i.price;
    }
    return total - off;
  }
}
