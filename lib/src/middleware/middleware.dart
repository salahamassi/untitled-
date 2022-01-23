import 'package:reflectable/reflectable.dart';

class Middlewares extends Reflectable {
  const Middlewares() : super(metadataCapability);
}

class Reflector extends Reflectable {
  const Reflector() : super(newInstanceCapability);
}

const reflector = Reflector();
const middlewares = Middlewares();

@reflector
abstract class Middleware {}
