import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/models/story/story_model.dart';
import 'package:baf/services/story_service.dart';
import 'package:stacked/stacked.dart';
import 'package:baf/views/story/generator/story_generator_view.form.dart';
import 'package:stacked_services/stacked_services.dart';

class StoryGeneratorViewModel extends FormViewModel {
  final log = getLogger('ConfigViewModel');
  final _bottomSheetService = locator<BottomSheetService>();

  StoryModel _form = StoryModel();
  StoryModel get form => _form;
  @override
  void setFormStatus() {
    _form = form.copyWith(
      topic: topicValue,
    );

    // Set a validation message for the entire form
    if (topicValue == null || topicValue!.isEmpty) {
      setTopicValidationMessage('Topic is mandatory');
    }
  }

  Future<void> init(StoryModel data) async {
    _form = data;
  }

  void onLineCountChanged(int value) {
    _form = form.copyWith(count: value.toString());
  }

  Future<void> onGenerator() async {
    return _bottomSheetService
        .completeSheet(SheetResponse(confirmed: true, data: form));
  }
}
