import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/models/story/story_model.dart';
import 'package:localization/localization.dart';
import 'package:stacked/stacked.dart';
import 'package:baf/views/story/generator/story_generator_view.form.dart';
import 'package:stacked_services/stacked_services.dart';

class StoryGeneratorViewModel extends FormViewModel {
  final log = getLogger('ConfigViewModel');
  final _bottomSheetService = locator<BottomSheetService>();

  StoryModel _form = StoryModel();
  StoryModel get form => _form;

  Future<void> init(StoryModel data) async {
    _form = data;
  }

  @override
  void setFormStatus() {
    _form = form.copyWith(
      topic: topicValue,
    );

    // Set a validation message for the entire form
    if (topicValue == null || topicValue!.isEmpty) {
      setTopicValidationMessage('validation_topic_required'.i18n());
    }
  }

  // Story line selector
  void onLineCountChanged(int value) {
    _form = form.copyWith(count: value.toString());
  }

  // Return user selection
  Future<void> onSubmit() async {
    return _bottomSheetService
        .completeSheet(SheetResponse(confirmed: true, data: form));
  }
}
