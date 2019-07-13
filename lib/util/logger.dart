import 'package:simple_logger/simple_logger.dart';

final SimpleLogger logger = SimpleLogger()
  ..setLevel(
    Level.FINEST,
    includeCallerInfo: true,
  );
