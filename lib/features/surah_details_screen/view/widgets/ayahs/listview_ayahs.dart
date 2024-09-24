import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/features/home_screen/model/quran_model.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_cubit.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_state.dart';
import 'package:islamic_app/features/surah_details_screen/view/widgets/ayahs/ayah_container.dart';

class ListviewAyahs extends StatelessWidget {
  const ListviewAyahs({super.key});

  @override
  Widget build(BuildContext context) {
    Surahs surahs = ModalRoute.of(context)?.settings.arguments as Surahs;
    return BlocBuilder<QuranCubit, QuranStates>(
      builder: (context, state) {
        var cubit = QuranCubit.get(context);
        return SizedBox(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                AyahContainer(ayahs: surahs.ayahs![index]),
            itemCount: surahs.ayahs!.length,
          ),
        );
      },
    );
  }
}
