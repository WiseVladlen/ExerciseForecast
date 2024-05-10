import 'package:exercise_forecast/ui/page/data_entry_page/data_entry_page.dart';
import 'package:exercise_forecast/utils/color_palette.dart';
import 'package:exercise_forecast/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = SchedulerBinding.instance.platformDispatcher.platformBrightness == Brightness.light;

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: isLightMode ? Brightness.light : Brightness.dark,
          error: Colors.redAccent,
        ),
        extensions: isLightMode
            ? const <ThemeExtension<dynamic>>[
                TextStyles.light(),
                ColorPalette.light(),
              ]
            : const <ThemeExtension<dynamic>>[
                TextStyles.dark(),
                ColorPalette.dark(),
              ],
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          },
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          shape: RoundedRectangleBorder(),
        ),
      ),
      home: const DataEntryPage(),
    );
  }
}
