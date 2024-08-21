import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/features/home_screen/model/quran_model.dart';
import 'package:islamic_app/features/home_screen/view/widget/surah/surah_widget.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_cubit.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_state.dart';

class SurahList extends StatelessWidget {
  const SurahList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, QuranStates>(
      builder: (context, state) {
        var cubit = QuranCubit.get(context);
        return cubit.searchController.text.isEmpty
            ? ListView.builder(
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => state is QuranGetLoadingState
                    ? const Center(child: CircularProgressIndicator())
                    : SurahWidget(
                        surahs: cubit.searchController.text.isEmpty
                            ? cubit.surahs[index]
                            : cubit.searchList[index],
                      ),
                itemCount: cubit.quranModel?.data?.surahs?.length ?? 5,
              )
            : ListView.builder(
                itemBuilder: (context, index) =>
                    SurahWidget(surahs: cubit.searchList[index]),
                shrinkWrap: true,
                itemCount: cubit.searchController.text.isEmpty
                    ? cubit.surahs.length
                    : cubit.searchList.length,
              );
      },
    );
  }
}
