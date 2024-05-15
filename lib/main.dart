import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boiler/config/get_it/service_locator.dart';
import 'package:flutter_boiler/config/router/app_router.dart';
import 'package:flutter_boiler/presentation/blocs/family_sheet/family_sheet_bloc.dart';
import 'package:flutter_boiler/presentation/blocs/family_sheet_form1/family_sheet_form1_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  // Load the .env file
  if (!kReleaseMode) {
    await dotenv.load(fileName: ".env.dev");
  }

  setUpServiceLocator();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => serviceLocator<FamilySheetBloc>()
            ..add(const FamilySheetTypeHousingEvent()),
        ),
        BlocProvider.value(value: serviceLocator<FamilySheetForm1Bloc>()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // supportedLocales: AppLocalizationsSetup.supportedLocales,
      // localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
      // locale: localeBloc.state.locale,
      // theme: LightTheme().theme(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Boilerplate',
      routerConfig: AppRouter.appRouter,
    );
  }
}
