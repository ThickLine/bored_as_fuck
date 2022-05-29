// import 'package:baf/core/shared/styles.dart';
// import 'package:baf/core/shared/ui_helpers.dart';
// import 'package:baf/layout/todo_bottom_sheet_layout.dart';
// import 'package:baf/views/todo/generator/todo_generator_viewmodel.dart';
// import 'package:baf/widgets/buttons/number_counter/number_counter_view.dart';
// import 'package:baf/widgets/buttons/save_button.dart';
// import 'package:baf/widgets/common/sheet_container_widget.dart';
// import 'package:baf/widgets/slider/range_slider_widget.dart';
// import 'package:baf/widgets/text/section_title_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:group_button/group_button.dart';
// import 'package:stack_appodeal_flutter/stack_appodeal_flutter.dart';
// import 'package:stacked/stacked.dart';
// import 'package:stacked_services/stacked_services.dart';

// class TodoGeneratorView extends StatelessWidget {
//   final SheetRequest? request;
//   final Function(SheetResponse)? completer;
//   final ScrollController? scrollController;
//   const TodoGeneratorView(
//       {Key? key, this.completer, this.request, this.scrollController})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final controller = GroupButtonController();
//     return ViewModelBuilder<TodoGeneratorViewModel>.reactive(
//       builder: (context, model, child) => TodoBottomSheetLayout(
//         child: Column(
//           children: [
//             SheetContainerWidget(
//               child: Column(
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
//                         child: Text(
//                           "Here you set generator settings. Or just press 'generate' for a random one.",
//                           textAlign: TextAlign.center,
//                           style: ktsDescriptionText.copyWith(
//                               color: kcPlaceholderColor),
//                         ),
//                       ),
//                       kVerticalSpaceSmall,
//                       // Adds
//                       const AppodealBanner(
//                           adSize: AppodealBannerSize.BANNER, placement: "top"),
//                       kVerticalSpaceSmall,
//                       // Adds
//                       // Range
//                       Row(
//                         children: const [
//                           Text(
//                             "Filter by price range",
//                             style: ktsLabelSmallText,
//                           ),
//                         ],
//                       ),
//                       kVerticalSpaceSmall,
//                       RangeSliderWidget(
//                         lowValue: model.config.price?.min ?? 0,
//                         highValue: model.config.price?.max ?? 0,
//                         maxValue: 1500,
//                         from: 0,
//                         step: 10,
//                         onDragging: (handlerIndex, lowerValue, upperValue) =>
//                             model.onPriceSliderValues(
//                                 handlerIndex: handlerIndex,
//                                 lowerValue: lowerValue,
//                                 upperValue: upperValue),
//                       ),
//                       kVerticalSpaceMedium,
//                       // Category
//                       Row(
//                         children: const [
//                           Text(
//                             "Filter by category",
//                             style: ktsLabelSmallText,
//                           ),
//                         ],
//                       ),
//                       kVerticalSpaceTiny,

//                       GroupButton(
//                         enableDeselect: true,
//                         options: GroupButtonOptions(
//                           selectedColor: kcPrimaryColor,
//                           borderRadius: BorderRadius.circular(30),
//                           spacing: 5,
//                           buttonWidth: 110,
//                           selectedTextStyle: ktsLabelSmallText.copyWith(
//                               fontSize: kCaptionTextSize, color: kcWhiteColor),
//                           unselectedTextStyle: ktsLabelSmallText.copyWith(
//                               fontSize: kCaptionTextSize,
//                               color: kcPlaceholderColor),
//                         ),
//                         controller: controller,
//                         buttons: model.categoriesList
//                             .map((el) => el.toUpperCase())
//                             .toList()
//                             .cast<String>(),
//                         onSelected: (s, i, c) {
//                           model.onCatogoriesSelect(i, c);
//                           if (c == false) {
//                             return controller.unselectIndex(i);
//                           }
//                           controller.selectIndex(i);
//                         },
//                       ),
//                       kVerticalSpaceSmall,
//                       // Adds
//                       const AppodealBanner(
//                           adSize: AppodealBannerSize.BANNER,
//                           placement: "bottom"),
//                       kVerticalSpaceSmall,
//                       // Adds
//                       // Accessibility
//                       const SectionTiteWidget(
//                         isTooltip: true,
//                         title: "Filter by accessibility",
//                         tooltipText: "Lower easier to acquire",
//                       ),
//                       kVerticalSpaceSmall,
//                       RangeSliderWidget(
//                         lowValue: model.config.accessibility?.min ?? 0,
//                         highValue: model.config.accessibility?.max ?? 0,
//                         from: 0,
//                         maxValue: 1.0,
//                         step: 0.01,
//                         textMin: "Min accessibility",
//                         textMax: "Max accessibility",
//                         onDragging: (handlerIndex, lowerValue, upperValue) =>
//                             model.onAccessibilitySliderValues(
//                                 handlerIndex: handlerIndex,
//                                 lowerValue: lowerValue,
//                                 upperValue: upperValue),
//                       ),
//                       kVerticalSpaceMedium,
//                       // Participant
//                       Row(
//                         children: const [
//                           Text(
//                             "Filter by participant",
//                             style: ktsLabelSmallText,
//                           ),
//                         ],
//                       ),
//                       kVerticalSpaceTiny,
//                       NumberCounterView(
//                         key: key,
//                         onChanged: model.onParticipant,
//                         value: model.config.participant ?? 1,
//                       ),
//                     ],
//                   ),
//                   kVerticalSpaceRegular,
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SaveButtonWidget(
//                         backgroundColor: kcPrimaryColor,
//                         onPressed: model.onGenerator,
//                         title: "Generate",
//                       ),
//                     ],
//                   ),
//                   kVerticalSpaceRegular,
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       viewModelBuilder: () => TodoGeneratorViewModel(),
//     );
//   }
// }
