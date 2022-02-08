import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/views/saved/saved_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class SavedView extends StatelessWidget {
  final ScrollController? scrollController;
  const SavedView({Key? key, this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SavedViewModel>.reactive(
      builder: (context, model, child) => WrapperLayout(
        child: Scaffold(
          backgroundColor: kcBlackBackgroundColor,
          body: Container(
              padding: kPagePadding,
              child: ListView(children: [
                kVerticalSpaceMedium,
                Center(
                  child: Text("Saved Items",
                      style: ktsTitleText.copyWith(color: kcPlaceholderColor)),
                ),
                kVerticalSpaceLarge,
                ListView.builder(
                  shrinkWrap: true,
                  controller: scrollController,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 20,
                  itemBuilder: (context, index) => Card(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('These ListTiles are expanded '),
                      trailing: const Icon(
                        Icons.more_vert,
                        size: 16.0,
                      ),
                    ),
                  ),
                ),
              ])),
        ),
      ),
      viewModelBuilder: () => SavedViewModel(),
    );
  }
}
