import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic_app/features/home_screen/view/widget/most_recently/most_recent_widget.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_cubit.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_state.dart';

class ListViewRecently extends StatelessWidget {
  const ListViewRecently({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, QuranStates>(
      builder: (context, state) {
        var height = MediaQuery.of(context).size.height;
        var cubit = QuranCubit.get(context);
        return cubit.mostRecentList.isEmpty
            ? const SizedBox.shrink()
            : SizedBox(
                height: height * .18,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  itemBuilder: (context, index) => MostRecentWidget(
                    recentSurahs: cubit.mostRecentList[index],
                    ayahs: cubit.mostRecentList[index].ayahs![index],
                  ),
                  itemCount: cubit.mostRecentList.length,
                ),
              );
      },
    );
  }
}
