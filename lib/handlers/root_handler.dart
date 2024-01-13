import 'package:shelf/shelf.dart';

Future<Response> rootHandler(Request request) async {
  return Response.ok(
    _rfw,
    headers: {
      'Access-Control-Allow-Origin': '*',
    },
  );
}

const _rfw = '''
import core.widgets;
import material;
import local;

widget Main = Scaffold(
  appBar: AppBar(
    title: Text(text: 'RFW Demo App'),
  ),
  body: Center(
    child: Text(text: 'Loaded'),
  ),
);
''';
