import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/features/auth_screen/view_model/auth_cubit/state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitState());

  static AuthCubit get(context) => BlocProvider.of(context);

  TextEditingController nameController = TextEditingController();
  TextEditingController emilaController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conPasswordController = TextEditingController();

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  GlobalKey<FormState> registerKey = GlobalKey<FormState>();

  bool obscure = true;
  bool confirmObscure = true;

  void changeObscure() {
    obscure = !obscure;
    emit(ChangeObscureState());
  }

  void changeConfirmObscure() {
    confirmObscure = !confirmObscure;
    emit(ChangeObscureState());
  }

  void reset() {
    nameController.clear();
    emilaController.clear();
    passwordController.clear();
    conPasswordController.clear();
  }

}
