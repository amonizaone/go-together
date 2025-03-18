import 'package:flutter/foundation.dart';
import 'package:gotogether/src/features/home/presentation/pages/pages.dart';

import 'src/core/config/config.dart';
import 'package:flutter/material.dart';
import 'src/core/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (ctx, ch) {
        ScreenUtil.init(ctx);

        return MaterialApp(
          debugShowCheckedModeBanner: kDebugMode,
          // initialRoute: RoutesName.initial,
          // onGenerateRoute: AppRoute.generate,
          builder: (context, child) {
            // DismissKeyboard
            return child ?? SizedBox();
          },

          home: HomePage(),
        );
      },
    );
  }
}
