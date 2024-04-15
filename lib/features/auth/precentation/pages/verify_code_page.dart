import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mlc_app/config/constants/all_constants.dart';
import 'package:mlc_app/config/enums/bloc_status.dart';
import 'package:mlc_app/config/notifications/show_message.dart';
import 'package:mlc_app/config/widgets/custom_button.dart';
import 'package:mlc_app/features/auth/data/model/registration_model.dart';
import 'package:mlc_app/features/auth/data/model/sms_code_response_model.dart';
import 'package:mlc_app/features/auth/precentation/bloc/bloc/auth_bloc.dart';
import 'package:mlc_app/features/auth/precentation/widgets/resend_code_bottom_sheet.dart';
import 'package:mlc_app/features/auth/precentation/widgets/timer_widget.dart';
import 'package:mlc_app/features/auth/precentation/widgets/verfy_code_bottom_sheet.dart';
import 'package:mlc_app/l10n/locale_keys.g.dart';
import 'package:pinput/pinput.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({
    super.key,
    required this.smsCodeResponseModel,
    required this.registrationModel,
  });
  final SmsCodeResponseModel smsCodeResponseModel;
  final RegistrationModel registrationModel;

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  final TextEditingController code = TextEditingController();

  bool isActive = true;
  final FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.signUpStatus == BlocStatus.completed) {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return const VerifyCodeBottomSheet();
            },
          );
        } else if (state.signUpStatus == BlocStatus.failed) {
          ShowToast.showErrorToast(context, "ServerFailure");
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    style: AppDecorations.buttonStyle(
                      padding: const EdgeInsets.all(10),
                      border: const BorderSide(color: AppColors.borderColor),
                      borderRadius: 100,
                    ),
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 23.h, bottom: 14.h),
                    child: Text(
                      LocaleKeys.confirm_code.tr(),
                      style: AppTextStyles.body24w5,
                    ),
                  ),
                  Text(
                    LocaleKeys.send_sms_code.tr(),
                    style: AppTextStyles.body16w4.copyWith(
                      color: AppColors.textColor3,
                    ),
                  ),
                  Text(widget.registrationModel.phone ?? "",
                      style: AppTextStyles.body16w5),
                  SizedBox(height: 40.h),
                  Pinput(
                    autofocus: true,
                    controller: code,
                    focusNode: focusNode,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    keyboardType: TextInputType.number,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsRetrieverApi,
                    closeKeyboardWhenCompleted: false,
                    useNativeKeyboard: true,
                    length: 5,
                  ),
                  TimerWidget(
                    onEnd: (value) {
                      setState(() {
                        isActive = false;
                      });
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return const ResendCodeBottomSheet();
                        },
                      );
                    },
                  ),
                  CustomButton(
                    isActive: isActive,
                    isProgress: state.signUpStatus == BlocStatus.inProgress,
                    title: LocaleKeys.confirm.tr(),
                    onTap: () {
                      if (code.text ==
                          widget.smsCodeResponseModel.code.toString()) {
                        context.read<AuthBloc>().add(
                              SignUp(
                                  registrationModel: widget.registrationModel),
                            );
                      } else {
                        ShowToast.showErrorToast(context, "Incorrect code");
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        LocaleKeys.not_get_code.tr(),
                        style: AppTextStyles.body16w4
                            .copyWith(color: AppColors.textColor),
                      ),
                      TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) {
                              return const ResendCodeBottomSheet();
                            },
                          );
                        },
                        child: Text(
                          LocaleKeys.resend.tr(),
                          style: AppTextStyles.body16w4
                              .copyWith(color: AppColors.blue100),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
