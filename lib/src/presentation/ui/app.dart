import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:get/get.dart';
import 'package:river_movies/src/presentation/ui/home/home_page.dart';
import 'package:river_movies/src/presentation/ui/theme/theme.dart';
import 'detail/detail_page.dart';

class Application extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: defaultTheme,
      localizationsDelegates: Resource.localizationsDelegates,
      supportedLocales: Resource.supportedLocales,
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        if (supportedLocales.contains(locale)) {
          return locale;
        }
        return const Locale('en', '');
      },
      routes: {
        homePageRoutes: (_) => HomePage(),
        detailPageRoutes: (_) => DetailPage(),
      },
    );
  }
}
