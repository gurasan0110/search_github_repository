import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:search_github_repositories/app.dart';
import 'package:search_github_repositories/application/services/language_color_service/default_language_color_service.dart';
import 'package:search_github_repositories/domain/models/search_history.dart';
import 'package:search_github_repositories/gen/strings.g.dart';
import 'package:search_github_repositories/presentation/app_colors.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Future.wait([
    LocaleSettings.useDeviceLocale(),
    _openIsar(),
    _setLanguageColors(),
  ]);

  FlutterNativeSplash.remove();

  runApp(ProviderScope(child: TranslationProvider(child: const App())));
}

Future<void> _openIsar() async {
  final directory = await getApplicationDocumentsDirectory();
  await Isar.open([SearchHistorySchema], directory: directory.path);
}

Future<void> _setLanguageColors() async {
  final service = DefaultLanguageColorService();
  final languageColors = await service.loadLanguageColors();
  AppColors.language.set(languageColors);
}
