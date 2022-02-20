import 'package:baf/core/shared/styles.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/views/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
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
              child: Stack(
            alignment: Alignment.center,
            children: [
              CircularText(
                children: [
                  TextItem(
                    text: Text(
                      "Bored as F".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 30,
                        color: kcWhiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    space: 10,
                    startAngle: 90,
                    startAngleAlignment: StartAngleAlignment.center,
                    direction: CircularTextDirection.anticlockwise,
                  ),
                ],
                radius: 140,
                position: CircularTextPosition.inside,
              ),
              Image.asset(
                "assets/logo.png",
                width: 200,
                height: 200,
              ),
            ],
          )),
          backgroundColor: kcPrimaryColor,
        ),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
