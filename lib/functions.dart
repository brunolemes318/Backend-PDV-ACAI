import 'dart:async';

import 'package:back/models/stateday_model.dart';
import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

@CloudFunction()
FutureOr<Response> function(Request request) async {
  final Router router = Router();

  router.get('/', (Request request) {
    return Response.ok('teste');
  });

  router.get('/user', (Request request) {
    return Response.ok('Usuarios');
  });

  router.get('/stateday', (Request request) async {
    var day = StateDayModel();
    return Response.ok(
     ' ${day.stateNowDay}',
    );
  });

  return router(request);
}
