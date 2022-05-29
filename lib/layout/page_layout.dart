import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/widgets/animation/progress_bar_widget.dart';
import 'package:baf/widgets/buttons/circle_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final String? title;
  final Widget child;
  final bool isLoading;
  final bool isError;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final void Function()? onPressed;
  final Color backgroundColor;
  const PageLayout(
      {Key? key,
      required this.child,
      required this.backgroundColor,
      this.title,
      this.leftIcon,
      this.rightIcon,
      this.isLoading = false,
      this.isError = false,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: backgroundColor,
      child: SafeArea(
        top: false,
        child: isError
            ? Scaffold(
                backgroundColor: backgroundColor,
                body: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'An error has occered while running the request',
                          style: TextStyle().copyWith(
                              color: calculateTextColor(backgroundColor)),
                        ),
                        kVerticalSpaceMedium,
                        CircleButtonWidget(
                          onPressed: (() => Navigator.pop(context)),
                          backgroundColor: backgroundColor,
                          isText: false,
                          child: const Icon(
                            // Icons.arrow_forward_sharp,
                            Icons.arrow_back_ios_new,
                            color: kcWhiteColor,
                            size: 32.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
            : Stack(
                children: [
                  CustomScrollView(
                    slivers: [
                      CupertinoSliverNavigationBar(
                        backgroundColor: backgroundColor,
                        leading: CupertinoNavigationBarBackButton(
                          onPressed: onPressed ?? () => Navigator.pop(context),
                          color: CupertinoColors.label,
                        ),
                        largeTitle: Text(title ?? ""),
                      ),
                      SliverFillRemaining(
                          child: Scaffold(
                              backgroundColor: backgroundColor,
                              body: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, bottom: 20),
                                child: isLoading
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: double.infinity,
                                              height: 35,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 24.0),
                                              child: ProgressBarWidget(
                                                "Loading...",
                                                backgroundColor:
                                                    backgroundColor,
                                              )),
                                        ],
                                      )
                                    : child,
                              ))),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: kPagePadding,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          leftIcon ?? Container(),
                          rightIcon ?? Container(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
