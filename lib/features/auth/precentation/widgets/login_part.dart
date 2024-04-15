import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mlc_app/config/enums/bloc_status.dart';
import 'package:mlc_app/config/notifications/show_message.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/config/widgets/custom_button.dart';
import 'package:mlc_app/features/auth/data/model/login_model.dart';
import 'package:mlc_app/features/auth/precentation/bloc/bloc/auth_bloc.dart';
import 'package:mlc_app/features/auth/precentation/widgets/custom_input_text.dart';
import 'package:mlc_app/features/auth/precentation/widgets/custom_white_button.dart';
import 'package:mlc_app/features/main/precentation/widgets/copy_right_text.dart';
import 'package:mlc_app/l10n/locale_keys.g.dart';

import '../../../../config/constants/all_constants.dart';

class LoginPart extends StatelessWidget {
  LoginPart({
    super.key,
    required this.tabController,
  });
  final globalKey = GlobalKey<FormState>();
  final TabController tabController;
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.signInStatus == BlocStatus.completed) {
          Navigator.pushReplacementNamed(
            context,
            Routes.driverMainPage,
          );
        } else if (state.signInStatus == BlocStatus.connectionFailed) {
          ShowToast.showErrorToast(
              context, "Connection failure, pLease try again");
        } else if (state.signInStatus == BlocStatus.unauthorized) {
          ShowToast.showErrorToast(
              context, "This user not found! Please go register");
        } else if (state.signInStatus == BlocStatus.forbidden) {
          ShowToast.showErrorToast(context, "Incorrect password!");
          passwordFocus.requestFocus();
          password.clear();
        }
        if (state.signInStatus == BlocStatus.failed) {
          ShowToast.showErrorToast(context, "ServerFailure ${state.message}");
        }
      },
      builder: (context, state) {
        return Form(
          key: globalKey,
          child: Column(
            children: [
              SizedBox(height: 35.h),
              CustomInputText(
                controller: phone,
                autoFocus: true,
                focusNode: phoneFocus,
                title: LocaleKeys.tel_number.tr(),
                hintText: LocaleKeys.tel_number.tr(),
                icon: Assets.icons.call,
                textInputType: TextInputType.phone,
                textInputFormatter: MaskTextInputFormatter(
                  mask: "+998 ## ### ## ##",
                  filter: {"#": RegExp(r'[0-9]')},
                  type: MaskAutoCompletionType.eager,
                ),
                validator: (value) {
                  if (value?.length != 17) {
                    phoneFocus.requestFocus();
                    return "Phone number is too short";
                  } else {
                    return null;
                  }
                },
              ),
              CustomInputText(
                controller: password,
                focusNode: passwordFocus,
                title: LocaleKeys.password.tr(),
                hintText: LocaleKeys.password.tr(),
                isPassword: true,
                icon: Assets.icons.lock,
                validator: (value) {
                  if (value!.length < 6) {
                    passwordFocus.requestFocus();
                    return "Password is less than 6 letters";
                  } else {
                    return null;
                  }
                },
              ),
              CustomButton(
                isProgress: state.signInStatus == BlocStatus.inProgress,
                title: LocaleKeys.log_in.tr(),
                margin:
                    EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 20.h),
                onTap: () {
                  if (globalKey.currentState!.validate()) {
                    context.read<AuthBloc>().add(
                          Login(
                            loginModel: LoginModel(
                              phone: phone.text.replaceAll(" ", ''),
                              password: password.text,
                            ),
                          ),
                        );
                  }
                },
              ),
              CustomWhiteButton(
                title: LocaleKeys.create_new_accaunt.tr(),
                onTap: () {
                  tabController.animateTo(1);
                },
              ),
              const Spacer(),
              const CopyRightText(),
            ],
          ),
        );
      },
    );
  }
}
