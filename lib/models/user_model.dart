import 'package:postgrest/postgrest.dart';

class UserModel {
  late String name, user, password, location;

  UserModel(
      {this.name = "desconhecido",
      this.user = "usuário novo",
      this.password = "123456", required this.location});

  /*
  Métodos referentes aos atributos do model
  Os métodos set validam as strings usando uma regex que verifica 
  Se existe números dentro da String
  */

  /* Método set para o nome */
  set setName(String name) {
    if (!name.contains('/[0-9]/')) {
      this.name = name;
    }
  }

  /* Método get para o nome */
  get getName => name;

  /*
  Métodos referentes aos atributos do model
  Os métodos set validam as strings se elas são vazias
  */

  /* Método set para o usuário */
  set setUser(String user) {
    if (!user.isEmpty) {
      this.user = user;
    }
  }

  /* Método get para o usuário */
  get getUser => user;

  /*
  Métodos referentes aos atributos do model
  Os métodos set validam as strings se elas são vazias
  */

  /* Método set para a senha */
  set setPassword(String password) {
    if (!password.isEmpty) {
      this.password = password;
    }
  }

  /* Método get para a senha */
  get getPassword => password;
}
