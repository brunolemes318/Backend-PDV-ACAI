import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

@CloudFunction()
Response function(Request request) {
  return Response.ok('Rota Principal');
}

@CloudFunction()
Response product(Request request) {
  return Response.ok('Rota Principal');
}

@CloudFunction()
Response user(Request request) {
  return Response.ok('Rota Principal');
}


