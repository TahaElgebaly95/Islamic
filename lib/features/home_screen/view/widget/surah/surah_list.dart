import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/features/home_screen/view/widget/surah/surah_widget.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_cubit.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_state.dart';
import 'package:islamic_app/features/surah_details_screen/view/screens/surah_details.dart';

class SurahList extends StatelessWidget {
  const SurahList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, QuranStates>(
      builder: (context, state) {
        var cubit = QuranCubit.get(context);
        return state is QuranGetLoadingState
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => SurahWidget(
                  surahs: cubit.searchController.text.isEmpty
                      ? cubit.surahs[index]
                      : cubit.searchList[index],
                  onTap: () {
                    // cubit.mostRecentlyRead(cubit.surahs[index]);
                    // cubit.searchController.clear();
                    Navigator.pushNamed(context, SurahDetails.surahDetails , arguments: cubit.surahs[index]);
                  },
                ),
                itemCount: cubit.searchController.text.isEmpty
                    ? cubit.surahs.length
                    : cubit.searchList.length,
              );
      },
    );
  }
}
