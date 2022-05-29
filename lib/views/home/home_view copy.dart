// import 'package:baf/core/shared/styles.dart';
// import 'package:baf/core/shared/ui_helpers.dart';
// import 'package:baf/layout/wrapper_layout.dart';
// import 'package:baf/widgets/buttons/save_button.dart';
// import 'package:flutter/material.dart';
// import 'package:stacked/stacked.dart';
// import 'package:baf/views/home/home_viewmodel.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const double width = double.infinity;
//     return ViewModelBuilder<HomeViewModel>.reactive(
//       builder: (context, model, child) => WrapperLayout(
//         child: Scaffold(
//           body: SizedBox(
//             height: double.infinity,
//             child: Stack(
//               children: [
//                 CustomPaint(
//                   size: Size(
//                       width,
//                       (width * 0.5)
//                           .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
//                   painter: RPSCustomPainter(),
//                   child: SizedBox(
//                     width: double.infinity,
//                     height: kScreenHeightPercentage(context, percentage: 0.85),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Expanded(
//                               flex: 2,
//                               child: Row(
//                                 children: const [
//                                   RotatedBox(
//                                     quarterTurns: 3,
//                                     child: Text(
//                                       "Bored?",
//                                       style: ktsDisplayText,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Expanded(
//                               flex: 2,
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Image.asset(
//                                     "assets/bored_man.png",
//                                     height: 300,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             kHorizontalSpaceTiny,
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 0,
//                   bottom: 40,
//                   right: 0,
//                   child: SizedBox(
//                     height: 200,
//                     child: Container(
//                       padding: const EdgeInsets.only(
//                           left: 20, right: 20, bottom: 10, top: 20),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             children: const [
//                               Text(
//                                 "Don’t get bored",
//                                 style: ktsTitleText,
//                               ),
//                               kVerticalSpaceSmall,
//                               Text(
//                                 "Get interesting activities that will keep you entertained for hours.",
//                                 style: ktsDescriptionText,
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SaveButtonWidget(
//                                 backgroundColor: kcPlaceholderColor,
//                                 onPressed: model.onRoute,
//                                 title: "Start",
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//       viewModelBuilder: () => HomeViewModel(),
//     );
//   }
// }

// class RPSCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(0, 0);
//     path_0.lineTo(size.width, 0);
//     path_0.lineTo(size.width, size.height * 0.6635802);
//     path_0.arcToPoint(Offset(size.width * 0.7866667, size.height * 0.7870370),
//         radius:
//             Radius.elliptical(size.width * 0.2133333, size.height * 0.1234568),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_0.lineTo(size.width * 0.2133333, size.height * 0.7870370);
//     path_0.arcToPoint(Offset(0, size.height * 0.9104938),
//         radius:
//             Radius.elliptical(size.width * 0.2133333, size.height * 0.1234568),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_0.lineTo(0, 0);
//     path_0.close();

//     Paint paint0Fill = Paint()..style = PaintingStyle.fill;
//     paint0Fill.color = const Color(0xffe8fffa).withOpacity(1.0);
//     canvas.drawPath(path_0, paint0Fill);

//     Path path_1 = Path();
//     path_1.moveTo(0, 0);
//     path_1.lineTo(size.width, 0);
//     path_1.lineTo(size.width, size.height * 0.6635802);
//     path_1.arcToPoint(Offset(size.width * 0.7866667, size.height * 0.7870370),
//         radius:
//             Radius.elliptical(size.width * 0.2133333, size.height * 0.1234568),
//         rotation: 0,
//         largeArc: false,
//         clockwise: true);
//     path_1.lineTo(size.width * 0.2133333, size.height * 0.7870370);
//     path_1.arcToPoint(Offset(0, size.height * 0.9104938),
//         radius:
//             Radius.elliptical(size.width * 0.2133333, size.height * 0.1234568),
//         rotation: 0,
//         largeArc: false,
//         clockwise: false);
//     path_1.lineTo(0, 0);
//     path_1.close();

//     Paint paint1Fill = Paint()..style = PaintingStyle.fill;
//     paint1Fill.color = const Color(0xff185083).withOpacity(1.0);
//     canvas.drawPath(path_1, paint1Fill);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
