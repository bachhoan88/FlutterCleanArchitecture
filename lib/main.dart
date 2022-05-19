import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/app.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: Application()));
}