import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/core/data/network/helper/dio.dart';
import 'package:islamic_app/my_app.dart';
import 'package:islamic_app/core/data/local/shared_helper.dart';
import 'package:islamic_app/core/data/network/helper/bloc_observer.dart';

import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await EasyLocalization.ensureInitialized();
  await SharedHelper.init();
  await DioHelper.init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => QuranCubit()..getQuran()),
      ],
      child: EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path: 'assets/translations',
        // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        child: const MyAppIslamic(),
      ),
    ),
  );
}

//flutter pub run easy_localization:generate -S assets/translations -O lib/item -o local_keys.g.dart -f keys الترجمة
