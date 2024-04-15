import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mlc_app/config/enums/bloc_status.dart';
import 'package:mlc_app/config/notifications/show_message.dart';
import 'package:mlc_app/config/routes/routes.dart';
import 'package:mlc_app/config/widgets/custom_button.dart';
import 'package:mlc_app/features/auth/data/model/registration_model.dart';
import 'package:mlc_app/features/auth/precentation/bloc/bloc/auth_bloc.dart';
import 'package:mlc_app/features/auth/precentation/widgets/custom_input_text.dart';
import 'package:mlc_app/features/auth/precentation/widgets/select_item_auth.dart';
import 'package:mlc_app/features/main/precentation/widgets/copy_right_text.dart';
import 'package:mlc_app/l10n/locale_keys.g.dart';

import '../../../../config/constants/all_constants.dart';

class SignUpPart extends StatelessWidget {
  SignUpPart({
    super.key,
    required this.tabController,
  });
  final TabController tabController;
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController password2 = TextEditingController();
  int roleId = 0;

  final globalKey = GlobalKey<FormState>();
  final FocusNode nameFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode password2Focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.sendCodeStatus == BlocStatus.completed) {
          Navigator.pushNamed(
            context,
            Routes.verifyCodePage,
            arguments: {
              "smsCodeResponse": state.smsCodeResponseModel,
              "registerModel": RegistrationModel(
                fullname: name.text,
                password: password.text,
                password2: password2.text,
                phone: phone.text.replaceAll(' ', ''),
                roleId: roleId,
                smsCodeId: state.smsCodeResponseModel!.id,
              ),
            },
          );
        } else if (state.signInStatus == BlocStatus.connectionFailed) {
          ShowToast.showErrorToast(
              context, "Connection failure, pLease try again");
        } else if (state.signInStatus == BlocStatus.unauthorized) {
          ShowToast.showErrorToast(
              context, "This user not found! Please go register");
        } else if (state.signInStatus == BlocStatus.forbidden) {
          ShowToast.showErrorToast(context, "Incorrect password!");
          // passwordFocus.requestFocus();
          password.clear();
        }
        if (state.signInStatus == BlocStatus.failed) {
          ShowToast.showErrorToast(context, "ServerFailure ${state.message}");
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Form(
            key: globalKey,
            child: Column(
              children: [
                SizedBox(height: 35.h),
                CustomInputText(
                  controller: name,
                  title: LocaleKeys.name.tr(),
                  hintText: LocaleKeys.name.tr(),
                  icon: Assets.icons.profileLinear,
                  validator: (value) {
                    if (value!.length < 3) {
                      nameFocus.requestFocus();
                      return "Name less than 3 charackters ";
                    } else {
                      return null;
                    }
                  },
                ),
                CustomInputText(
                  controller: phone,
                  title: LocaleKeys.tel_number.tr(),
                  hintText: LocaleKeys.tel_number.tr(),
                  icon: Assets.icons.call,
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
                  title: LocaleKeys.create_password.tr(),
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
                CustomInputText(
                  controller: password2,
                  title: LocaleKeys.enetr_again.tr(),
                  hintText: LocaleKeys.password.tr(),
                  isPassword: true,
                  icon: Assets.icons.lock,
                  validator: (value) {
                    if (value != password.text) {
                      password2Focus.requestFocus();
                      return "Second password is differend from first";
                    } else {
                      return null;
                    }
                  },
                ),
                SelectItemAuth(
                  onChange: (value) {
                    roleId = value;
                  },
                ),
                CustomButton(
                  isProgress: state.sendCodeStatus == BlocStatus.inProgress,
                  title: LocaleKeys.registration.tr(),
                  margin: EdgeInsets.symmetric(horizontal: 24.w)
                      .copyWith(top: 20.h),
                  onTap: () {
                    if (globalKey.currentState!.validate() && roleId != 0) {
                      context.read<AuthBloc>().add(
                            SendCode(
                              registrationModel: RegistrationModel(
                                fullname: name.text,
                                password: password.text,
                                password2: password2.text,
                                phone: phone.text.replaceAll(' ', ''),
                                roleId: roleId,
                              ),
                            ),
                          );
                    } else {
                      ShowToast.showErrorToast(context, "Error");
                    }
                  },
                ),
                SizedBox(height: 20.h),
                const CopyRightText(),
              ],
            ),
          ),
        );
      },
    );
  }
}
