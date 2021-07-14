import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/home/home_page.dart';
import 'package:flutter_clean_architecture/src/presentation/ui/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'detail/detail_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      localizationsDelegates: Resource.localizationsDelegates,
      supportedLocales: Resource.supportedLocales,
      localeResolutionCallback: (Locale? locale, Iterable<Locale> supportedLocales) {
        if (supportedLocales.contains(locale)) {
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
