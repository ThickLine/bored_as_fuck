import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/story_bottom_sheet_layout.dart';
import 'package:baf/views/story/generator/story_generator_view.form.dart';
import 'package:baf/views/story/generator/story_generator_viewmodel.dart';
import 'package:baf/widgets/buttons/number_counter/number_counter_view.dart';
import 'package:baf/widgets/buttons/save_button.dart';
import 'package:baf/widgets/common/sheet_container_widget.dart';
import 'package:baf/widgets/common/text_field_widget.dart';
import 'package:baf/widgets/text/section_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

final GlobalKey<FormState> _modalFormKey = GlobalKey<FormState>();

@FormView(fields: [
  FormTextField(name: 'topic'),
])
class StoryGeneratorView extends StatelessWidget with $StoryGeneratorView {
  final SheetRequest? request;
  final Function(SheetResponse)? completer;
  StoryGeneratorView({Key? key, this.completer, this.request})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StoryGeneratorViewModel>.reactive(
      onModelReady: (model) => {
        model.init(request?.data),
        topicController.text = model.form.topic ?? "",
        listenToFormUpdated(model)
      },
      onDispose: (_) => disposeForm(),
      builder: (context, model, child) => StoryBottomSheetLayout(
          onTap: () => completer!(SheetResponse(confirmed: false)),
          child: Form(
            key: _modalFormKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SheetContainerWidget(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFieldWidget(
                      hintText: "story_input".i18n(),
                      controller: topicController,
                    ),
                    if (model.topicValidationMessage != null)
                      Text(
                        model.topicValidationMessage ?? "",
                        style: const TextStyle(color: Colors.red),
                      ),
                  ],
                )),
                kVerticalSpaceRegular,
                SectionTiteWidget(
                  isTooltip: true,
                  title: "story_lines_generator_title".i18n(),
                  tooltipText: "story_lines_generator_tooltip".i18n(),
                  child: NumberCounterView(
                    key: key,
                    onChanged: (value) => model.onLineCountChanged(value),
                    value: int.parse(model.form.count ?? "0"),
                  ),
                ),
                kVerticalSpaceRegular,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SaveButtonWidget(
                      backgroundColor: kcPrimaryColor,
                      onPressed: () {
                        if (model.topicValidationMessage != null) return;
                        model.onSubmit();
                      },
                      title: "generate_button".i18n(),
                    ),
                  ],
                ),
                kVerticalSpaceLarge
              ],
            ),
          )),
      viewModelBuilder: () => StoryGeneratorViewModel(),
    );
  }
}
