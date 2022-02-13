import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/views/saved/saved_viewmodel.dart';
import 'package:baf/widgets/buttons/action_button_widget.dart';
import 'package:baf/widgets/common/appbar_widget.dart';
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
          appBar: AppBarWidget(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ActionButtonWidget(
                color: kcBlackBackgroundColor.withOpacity(0.8),
                elevation: 2,
                child: const Icon(
                  Icons.arrow_back,
                  size: 16,
                  color: kcWhiteColor,
                ),
                onPressed: Navigator.of(context).pop,
              ),
            ),
            backgroundColor: kcBlackBackgroundColor,
            toolbarHeight: 100, // default is 56
            toolbarOpacity: 0.5,
            elevation: 0,
            title: "Saved Items",
          ),
          body: Container(
              padding: kPagePadding,
              child: ListView(children: [
                ListView.builder(
                  shrinkWrap: true,
                  controller: scrollController,
                  physics: const ClampingScrollPhysics(),
                  itemCount: model.list.length,
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
