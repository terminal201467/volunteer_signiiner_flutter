
//DebugPrints
void debugPrintInfo(String message) {
  print('ℹ️ INFO: $message');
  // You can also use debugPrint or any other logging mechanism
}

void debugPrintWarning(String message) {
  print('⚠️ WARNING: $message');
  // You can also use debugPrint or any other logging mechanism
}

void debugPrintError(String message) {
  print('❌ ERROR: $message');
  // You can also use debugPrint or any other logging mechanism
}

void debugPrintCustom(String prefix, String message) {
  print('$prefix: $message');
  // You can also use debugPrint or any other logging mechanism
}