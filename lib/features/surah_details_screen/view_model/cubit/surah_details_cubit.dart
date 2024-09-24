import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'surah_details_state.dart';

class SurahDetailsCubit extends Cubit<SurahDetailsState> {
  SurahDetailsCubit() : super(SurahDetailsInitial());

  static SurahDetailsCubit get(context) => BlocProvider.of(context);
}
