import 'package:flutter/cupertino.dart';
import 'package:islamic_app/core/components/constant.dart';
import 'package:islamic_app/core/data/network/helper/dio.dart';
import 'package:islamic_app/features/home_screen/model/quran_model.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuranCubit extends Cubit<QuranStates> {
  QuranCubit() : super(QuranInitialState());

  static QuranCubit get(context) => BlocProvider.of(context);

  List<Surahs> mostRecentList = [];

  void mostRecentlyRead(Surahs recent) {
    if (mostRecentList.any(
      (element) => element.number != recent.number,
    )) {
      mostRecentList.add(recent);
    }
    emit(QuranMostRecentlySuccessState());
  }

  QuranModel? quranModel;
  List<Surahs> surahs = [];
  List<Ayahs> ayahs = [];

  Future<void> getQuran() async {
    emit(QuranGetLoadingState());
    await DioHelper.getData(
      baseUrl: Constant.baseUrlQuran,
    ).then((value) {
      quranModel = QuranModel.fromJson(value.data);
      for (var element in quranModel!.data!.surahs!) {
        ayahs.addAll(element.ayahs!);
      }
      surahs = quranModel!.data!.surahs!;
      emit(QuranGetSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(QuranGetErrorState());
    });
  }

  TextEditingController searchController = TextEditingController();
  List<Surahs> searchList = [];

  void searchByName(String e) {
    searchList = [];
    for (var element in surahs) {
      if (element.englishName!.trim().toLowerCase().contains(
            e.trim().toLowerCase(),
          )) {
        searchList.add(element);
      } else if (element.name!
          .trim()
          .toLowerCase()
          .contains(e.trim().toLowerCase())) {
        // Arabic_Tools().RemoveTashkeel(element.name!);
        searchList.add(element);
      } else if (element.englishNameTranslation!
          .trim()
          .toLowerCase()
          .contains(e.trim().toLowerCase())) {
        searchList.add(element);
      }
    }
    emit(QuranSearchSuccessState());
  }
}
