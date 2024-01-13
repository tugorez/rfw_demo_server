import 'dart:io';
import 'package:shelf/shelf.dart';

Future<Response> rfwHandler(Request request, String fileName) async {
  final String rfw = await _readRfwFile(fileName);
  return Response.ok(
    rfw,
    headers: {'Access-Control-Allow-Origin': '*'},
  );
}

Future<String> _readRfwFile(String name) async {
  final file = File(_filePath(name));
  final exists = await file.exists();
  if (exists) return file.readAsString();
  return File(_filePath('404')).readAsString();
}

String _filePath(String fileName) => './rfw_files/$fileName';
