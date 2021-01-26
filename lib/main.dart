import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';

import 'src/presentation/ui/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: Application()));
}
