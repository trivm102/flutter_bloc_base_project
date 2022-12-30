import 'dart:async';


import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'app/app_bloc_observer.dart';
import 'generated/codegen_loader.g.dart';

void bootstrap() async {
  Bloc.observer = AppBlocObserver();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('vi', 'VN'),
      ],
      path: 'resources/langs',
      assetLoader: const CodegenLoader(),
      child: const App()
  ));
}