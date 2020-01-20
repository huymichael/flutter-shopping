import 'package:uuid/uuid.dart';

class UuidGenerator {
  final _uuid = Uuid();

  String getID() {
    return _uuid.v4();
  }
}
