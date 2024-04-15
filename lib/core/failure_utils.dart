import 'package:mlc_app/config/enums/bloc_status.dart';
import 'package:mlc_app/core/errors/failures.dart';

class FailureUtils{
  static BlocStatus getFailurBlocStatus(Failure failure) {
    if (failure is ConnectionFailure) {
      return BlocStatus.connectionFailed;
    } else if (failure is UnautorizedFailure) {
      return BlocStatus.unauthorized;
    } else if (failure is ForbiddenFailure) {
      return BlocStatus.forbidden;
    } else {
      return BlocStatus.failed;
    }
  }
}