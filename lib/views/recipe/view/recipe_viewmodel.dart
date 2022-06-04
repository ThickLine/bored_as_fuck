import 'package:baf/app/app.locator.dart';
import 'package:baf/app/app.logger.dart';
import 'package:baf/app/app.router.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/mixin/recipe_mixin.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/models/recipe/recipe_model.dart';
import 'package:baf/services/recipe_service.dart';
import 'package:baf/services/save_service.dart';
import 'package:localization/localization.dart';
import 'package:share_plus/share_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

const String busyObjectKey = 'recipe-key';

class RecipeViewModel extends BaseViewModel {
  final log = getLogger('RecipeViewModel');
  final _bottomSheetService = locator<BottomSheetService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _recipeService = locator<RecipeService>();
  final _saveService = locator<SaveService>();

  RecipeModel _form = RecipeModel(ingredients: []);
  RecipeModel get form => _form;

  Future<void> init(RecipeModel? data) async {
    if (data == null) await createRandom();
    if (data != null) _form = data;
    await onConcent();
  }

  /// Recipe [warning]
  Future<void> onConcent() async {
    var res = await _dialogService.showConfirmationDialog(
        title: "recipe_warning_title".i18n(),
        description: "recipe_warning_description".i18n(),
        confirmationTitle: "recipe_warning_confirm".i18n());

    if (res?.confirmed == false) {
      return _navigationService.pushNamedAndRemoveUntil(Routes.homeView);
    }
  }

  // Create random one if no data is passed
  Future<void> createRandom() async {
    _form.ingredients = await RecipeMixin.createRandomRecipe();
    await fetchActivity(form);
  }

  // Fetch [recipe] activity
  Future<void> fetchActivity(RecipeModel data) async {
    _form = await runBusyFuture(_recipeService.fetchActivity(data),
        busyObject: busyObjectKey);
  }

  //  Opens config sheet
  void onGenerator() async {
    var res = await _bottomSheetService.showCustomSheet(
        variant: BottomSheetType.RECIPE_SHEET,
        takesInput: true,
        isScrollControlled: true,
        enterBottomSheetDuration: const Duration(milliseconds: 500),
        data: form);

    if (res?.confirmed == true) {
      if (res?.data.ingredients.isEmpty) return await createRandom();
      await fetchActivity(res?.data);
    }
  }

  // Save item to activity service
  Future<void> onSavedItem() async {
    _form = form.copyWith(saved: true);
    ActivityModel activity = ActivityModel(
        activity: form,
        title: form.recipe,
        description: form.ingredients?.join(", "),
        type: ActivityType.RECIPE);

    await _saveService.addItemToList(activity);

    notifyListeners();
  }

  /// Share or copy [recipe] to clipboard
  Future<void> onShare() async {
    Share.share("${form.ingredients}!  ${form.recipe}",
        subject: "share_text".i18n());
  }
}
