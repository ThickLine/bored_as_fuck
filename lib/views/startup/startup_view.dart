import 'package:baf/core/shared/styles.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/views/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      disposeViewModel: false,
      onModelReady: (model) => model.handleMove(),
      builder: (context, model, child) => WrapperLayout(
        child: Scaffold(
          body: Center(
            child: Image.asset("assets/icon.png"),
          ),
          backgroundColor: kcBlackBackgroundColor,
        ),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
