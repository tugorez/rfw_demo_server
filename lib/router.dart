import 'package:shelf_router/shelf_router.dart';
import 'package:rfw_demo_server/handlers/root_handler.dart';

final router = Router()..post('/', rootHandler);
