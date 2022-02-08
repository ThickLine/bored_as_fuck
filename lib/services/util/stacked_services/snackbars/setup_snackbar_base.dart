import 'package:baf/app/app.locator.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:stacked_services/stacked_services.dart';

void setupSnackBarBase() {
  final _snackBarService = locator<SnackbarService>();

  _snackBarService.registerCustomSnackbarConfig(
    variant: SnackbarType.BASE,
    config: SnackbarConfig(
      backgroundColor: kcPrimaryColor,
      messageColor: kcWhiteColor,
      borderRadius: 1,
    ),
  );

  _snackBarService.registerCustomSnackbarConfig(
    variant: SnackbarType.SUCCESS,
    config: SnackbarConfig(
      backgroundColor: kcPrimaryColor,
      messageColor: kcWhiteColor,
      borderRadius: 1,
    ),
  );
  _snackBarService.registerCustomSnackbarConfig(
    variant: SnackbarType.ERROR,
    config: SnackbarConfig(
      backgroundColor: kcErrorColor,
      messageColor: kcWhiteColor,
      borderRadius: 1,
    ),
  );
}
