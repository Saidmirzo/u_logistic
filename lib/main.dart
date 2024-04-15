import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/core/injection_container/injection_container.dart'
    as di;
import 'package:mlc_app/core/injection_container/injection_container.dart';
import 'package:mlc_app/features/auth/data/model/login_response_model.dart';
import 'package:mlc_app/features/auth/precentation/bloc/bloc/auth_bloc.dart';
import 'package:mlc_app/features/driver/home/precentation/bloc/bloc/home_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await FireBaseApi().initNotification();
  di.init();
  Hive.initFlutter();
  Hive.registerAdapter(LoginResponseModelAdapter());
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      useOnlyLangCode: true,
      supportedLocales: const [
        Locale('en'),
        Locale('uz'),
        Locale('ru'),
      ],
      path: 'assets/l10n',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      splitScreenMode: true,
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<AuthBloc>()),
          BlocProvider(create: (context) => sl<HomeBloc>()),
        ],
        child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          title: 'MLC app',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          onGenerateRoute: (settings) => Routes.generateRoute(settings),
        ),
      ),
    );
  }
}
