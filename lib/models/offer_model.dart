import 'product_model.dart';

class UserOffer {
  String name, dataInicio, dataFim;
  double desconto;
  List<Product_Model> listdeItens;

  UserOffer(
      {required this.name,
      required this.dataInicio,
      required this.dataFim,
      this.desconto = 0.0,
      required this.listdeItens});

  
}
