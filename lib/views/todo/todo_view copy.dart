// import 'package:baf/core/shared/styles.dart';
// import 'package:baf/core/shared/ui_helpers.dart';
// import 'package:baf/layout/page_layout.dart';
// import 'package:baf/mixin/icon_mixin.dart';
// import 'package:baf/views/todo/todo_viewmodel.dart';
// import 'package:baf/widgets/animation/progress_bar_widget.dart';
// import 'package:baf/widgets/animation/pulsing_widget.dart';
// import 'package:baf/widgets/buttons/circle_button.dart';
// import 'package:flutter/material.dart';
// import 'package:rounded_background_text/rounded_background_text.dart';
// import 'package:stacked/stacked.dart';
// import 'dart:math' as math;

// class TodoView extends StatelessWidget {
//   const TodoView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<TodoViewModel>.reactive(
//       onModelReady: (model) async => await model.init(),
//       builder: (context, model, child) => PageLayout(
//         isLoading: model.isBusy,
//         backgroundColor: kcTodoColor,
//         title: 'Todo generator',
//         leftIcon: CircleButtonWidget(
//           onPressed: model.onGenerator,
//           backgroundColor: kcTodoColor.withOpacity(0.1),
//           isText: false,
//           child: const Icon(
//             // Icons.arrow_forward_sharp,
//             Icons.settings,
//             color: kcWhiteColor,
//             size: 32.0,
//           ),
//         ),
//         rightIcon: CircleButtonWidget(
//           onPressed: null,
//           backgroundColor: kcTodoColor.withOpacity(0.1),
//           isText: false,
//           child: Icon(
//             // Icons.arrow_forward_sharp,
//             Icons.favorite,
//             color: kcWhiteColor,
//             size: 32.0,
//           ),
//         ),
//         child: Container(
//           padding: kPagePadding,
//           child: ListView(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Transform.rotate(
//                     angle: -math.pi / 12.0,
//                     child: Container(
//                       padding: const EdgeInsets.all(10),
//                       child: Center(
//                           child: Icon(
//                               IconMixin.getPIcon(model.todo.participants ?? 1),
//                               size: 32,
//                               color: kcWhiteColor)),
//                     ),
//                   ),
//                   Expanded(
//                     child: Text(model.todo.activity?.toUpperCase() ?? "Story",
//                         textAlign: TextAlign.center,
//                         style: ktsLableText.copyWith(
//                             color: kcWhiteColor, fontWeight: FontWeight.bold)),
//                   ),
//                   Transform.rotate(
//                     angle: math.pi / 12.0,
//                     child: Container(
//                         padding: const EdgeInsets.all(10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: IconMixin.getMIcon(model.todo.price ?? 0),
//                         )),
//                   )
//                 ],
//               ),
//               kVerticalSpaceLarge,
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Flexible(
//                         child: RoundedBackgroundText(
//                           model.todo.suggestion?.trim() ?? "",
//                           textAlign: TextAlign.center,
//                           style: const TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               kVerticalSpaceLarge,
//             ],
//           ),
//         ),
//       ),
//       viewModelBuilder: () => TodoViewModel(),
//     );
//   }
// }
