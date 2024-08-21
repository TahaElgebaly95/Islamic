import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/features/home_screen/model/quran_model.dart';
import 'package:islamic_app/features/home_screen/view/widget/logo_home_screen.dart';
import 'package:islamic_app/features/home_screen/view/widget/most_recently/list_view_recently.dart';
import 'package:islamic_app/features/home_screen/view/widget/most_recently/most_recent_text.dart';
import 'package:islamic_app/features/home_screen/view/widget/most_recently/most_recent_widget.dart';
import 'package:islamic_app/features/home_screen/view/widget/search_bar.dart';
import 'package:islamic_app/features/home_screen/view/widget/surah/surah_list.dart';
import 'package:islamic_app/features/home_screen/view/widget/surah/surah_text.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_cubit.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_cubit.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_state.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  QuranModel? quranModel;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          const LogoPhotoHomeScreen(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: BlocConsumer<QuranCubit, QuranStates>(
              listener: (context, state) {},
              builder: (context, state) {
                var cubit = QuranCubit.get(context);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * .27),
                    const SearchBarCustom(),
                   // ListViewRecently(),
                    const ListViewRecently(),
                    const SurahText(),
                    const Expanded(
                      child:SurahList(),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
