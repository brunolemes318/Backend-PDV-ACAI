import 'package:postgrest/postgrest.dart';

class UserModel {
  late String name, user, password;
  late Object? picture;

  UserModel(
      {this.name = "desconhecido",
      this.user = "usuário novo",
      this.password = "123456",
      this.picture});

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

  /*
  Métodos referentes aos atributos do model user para a foto do usuario
  
  */

  /* Método set para capturar o caminho da foto */

  set setimageUser(Object image) {
    this.picture = image;
  }

  /* Método get para capturar o caminho da foto */
  get getImageUser => picture;
}
