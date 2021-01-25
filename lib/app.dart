import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/res.dart';
import 'package:get/get.dart';
import 'package:river_movies/constants.dart';
import 'package:river_movies/src/ui/home/home_page.dart';
import 'package:river_movies/src/ui/theme/theme.dart';

class Application extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: defaultTheme,
      localizationsDelegates: Resource.localizationsDelegates,
      supportedLocales: Resource.supportedLocales,
      routes: {
        Constants.homePage: (context) => HomePage(),
      },
    );
  }
}
