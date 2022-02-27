import 'package:baf/app/app.locator.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/views/config/config_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

void setupBottomSheetUi() {
  final _bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.CONFIG_SHEET: (context, sheetRequest, completer) =>
        _ConfigWrapperBottomSheet(request: sheetRequest, completer: completer),
  };

  _bottomSheetService.setCustomSheetBuilders(builders);
}

class _ConfigWrapperBottomSheet extends StatelessWidget {
  final SheetRequest? request;
  final Function(SheetResponse)? completer;
  const _ConfigWrapperBottomSheet({
    Key? key,
    this.request,
    this.completer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WrapperLayout(
        child: Container(
      margin: EdgeInsets.only(top: kScreenHeightPercentage(context) * 0.1),
      child: const ConfigView(
        isBottomSheet: true,
      ),
    ));
  }
}
