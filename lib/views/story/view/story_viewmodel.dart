import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/mixin/story_mixin.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/models/story/story_model.dart';
import 'package:baf/services/save_service.dart';
import 'package:baf/services/story_service.dart';
import 'package:localization/localization.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

const String busyObjectKey = 'story-key';

class StoryViewModel extends BaseViewModel {
  final log = getLogger('ConfigViewModel');
  final _bottomSheetService = locator<BottomSheetService>();
  final _storyService = locator<StoryService>();
  final _saveService = locator<SaveService>();

  StoryModel _form = StoryModel();

  StoryModel get form => _form;

  Future<void> init(StoryModel? data) async {
    if (data == null) await createRandom();
    if (data != null) _form = data;
  }

  // Create random story
  Future<void> createRandom() async {
    var item = await StoryMixin.createRandomStory() ?? StoryModel();
    await fetchActivity(item);
  }

  /// Fetch [story] activity
  Future<void> fetchActivity(StoryModel data) async {
    _form = await runBusyFuture(_storyService.fetchActivity(data),
        throwException: true, busyObject: busyObjectKey);
  }

//  Opens config sheet
  void onGenerator() async {
    var res = await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.STORY_SHEET,
        takesInput: true,
        isScrollControlled: true,
        enterBottomSheetDuration: const Duration(milliseconds: 500),
        data: form);

    if (res?.confirmed == true) await fetchActivity(res?.data);
  }

  // Save item to activity service
  Future<void> onSavedItem() async {
    _form = form.copyWith(saved: true);
    ActivityModel activity = ActivityModel(
        activity: form,
        title: form.topic,
        description: form.story?.substring(0, 45),
        type: ActivityType.STORY);

    await _saveService.addItemToList(activity);
    notifyListeners();
  }

  /// Share or copy [story] to clipboard
  Future<void> onShare() async {
    Share.share("${form.topic}!  ${form.story}", subject: "share_text".i18n());
  }
}
