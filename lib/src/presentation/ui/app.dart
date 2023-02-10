import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_clean_architecture/src/presentation/di/app_provider.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/home_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'detail/detail_page.dart';

class Application extends ConsumerWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: defaultTheme,
      localizationsDelegates: Resource.localizationsDelegates,
      supportedLocales: Resource.supportedLocales,
      localeResolutionCallback: (Locale? locale, Iterable<Locale> supportedLocales) {
        if (supportedLocales.any((element) => locale?.languageCode.contains(element.toString()) == true)) {
          String currentLanguageCode = ref.watch(localeCodeProvider);
          if (currentLanguageCode != locale!.languageCode) {
            SchedulerBinding.instance.addPostFrameCallback((_) {
              ref.watch(localeCodeProvider.notifier).state = locale.languageCode;
            });
          }

          return locale;
        }
        return const Locale('en', '');
      },
      routes: {
        homePageRoutes: (_) => const HomePage(),
        detailPageRoutes: (_) => const DetailPage(),
      },
    );
  }
}
