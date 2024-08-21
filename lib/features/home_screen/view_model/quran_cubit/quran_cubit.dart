import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:islamic_app/core/components/constant.dart';
import 'package:islamic_app/core/data/network/helper/dio.dart';
import 'package:islamic_app/features/home_screen/model/quran_model.dart';
import 'package:islamic_app/features/home_screen/view_model/quran_cubit/quran_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuranCubit extends Cubit<QuranStates> {
  QuranCubit() : super(QuranInitialState());

  static QuranCubit get(context) => BlocProvider.of(context);

  QuranModel? quranModel;
  List<Surahs> surahs = [];
  List<Ayahs> ayahs = [];
  Edition? edition;

  List<Surahs> mostRecentList = [];

  Future<void> getQuran() async {
    emit(QuranGetLoadingState());
    await DioHelper.getData(
      baseUrl: Constant.baseUrlQuran,
    ).then((value) {
      quranModel = QuranModel.fromJson(value.data);
      for (var e in value.data['data']['surahs']) {
        surahs.add(Surahs.fromJson(e));
      }
      edition = Edition.fromJson(value.data['data']['edition']);
      // for (var e in value.data['data']['surahs']['index']['ayahs']) {
      //   ayahs.add(Ayahs.fromJson(e));
      // }
      emit(QuranGetSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(QuranGetErrorState());
    });
  }

  TextEditingController searchController = TextEditingController();
  List<Surahs> searchList = [];

  Future<void> searchByName(String e) async {
    searchList = [];
    emit(QuranSearchLoadingState());
    await DioHelper.getData(
            queryParameters: {e: searchController.text},
            )
        .then((value) {
      for (var i in surahs) {
        if (i.name!.trim().toLowerCase().contains(
              e.trim().toLowerCase(),
            )) {
          searchList.add(i);
        }
      }
      emit(QuranGetSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(QuranGetErrorState());
    });
  }
}
