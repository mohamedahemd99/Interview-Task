
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1_app/models/login_model.dart';
import 'package:task1_app/network/helper.dart';

import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  IconData suffix = Icons.visibility;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility : Icons.visibility_off;
    emit(LoginIsPasswordVisibilityState());
  }

  UserLoginModel loginModel;
  String name;

   void userLogin({
     @required String phone,
     @required String password,
   }) {
     emit(LoginLoadingState());
     Helper.postData(url: "login", data: {
       "mobile": phone,
       "password": password,
     }).then((value) {
//       loginModel=UserLoginModel.fromJson(jsonDecode(value.data));
       print(value.data["name"]);
       name=value.data['name'];
       emit(LoginSuccessState());
     }).catchError((error) {
       print(error.toString());
       emit(LoginErrorState(error.toString()));
     });
   }
}
