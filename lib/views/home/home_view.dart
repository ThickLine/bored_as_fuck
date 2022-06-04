import 'package:baf/app/app.router.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/models/activity/activity_model.dart';
import 'package:baf/widgets/buttons/save_button.dart';
import 'package:baf/widgets/common/curved_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:baf/views/home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double width = double.infinity;
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => WrapperLayout(
        child: Scaffold(
          backgroundColor: Color(0xff185083).withOpacity(1.0),
          body: SizedBox(
              height: double.infinity,
              child: ListView.builder(
                  itemCount: model.list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CurvedListItemWiget(
                      onPressed: () => route(context, model.list[index].type!),
                      title: model.list[index].title,
                      subtitle: model.list[index].subtitle,
                      color: model.list[index].color,
                      isLast: index + 1 == model.list.length,
                      nextColor: index + 1 < model.list.length
                          ? model.list[index + 1].color
                          : null,
                    );
                  })

              // ListView(
              //   scrollDirection: Axis.vertical,
              //   children: <Widget>[
              //     CurvedListItemWiget(
              //       onPressed: model.onTodoRoute,
              //       title: 'Todo creator',
              //       subtitle: 'TODAY 5:30 PM',
              //       color: kcTodoColor.withOpacity(1.0),
              //       nextColor: kcStoryColor,
              //     ),
              //     CurvedListItemWiget(
              //       onPressed: model.onStoryRoute,
              //       title: 'Horror story creator',
              //       subtitle: 'TUESDAY 5:30 PM',
              //       color: kcStoryColor,
              //       nextColor: kcRecipeColor.withOpacity(1.0),
              //     ),
              //     CurvedListItemWiget(
              //       onPressed: model.onRecipeRoute,
              //       title: 'Recipe creator',
              //       subtitle: 'FRIDAY 6:00 PM',
              //       color: kcRecipeColor,
              //       nextColor: kcSaveColor.withOpacity(1.0),
              //     ),
              //     CurvedListItemWiget(
              //       onPressed: model.onSavedRoute,
              //       title: 'Saved Item',
              //       color: kcSaveColor,
              //     ),
              //   ],
              // ),
              ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

Future<void> route(context, ActivityType data) {
  switch (data) {
    case ActivityType.STORY:
      return Navigator.pushNamed(
        context,
        Routes.storyView,
      );
    case ActivityType.TODO:
      return Navigator.pushNamed(context, Routes.todoView);
    case ActivityType.RECIPE:
      return Navigator.pushNamed(context, Routes.recipeView);
    case ActivityType.SAVE:
      return Navigator.pushNamed(context, Routes.savedView);
    default:
      return Navigator.pushNamed(context, Routes.aboutView);
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.6635802);
    path_0.arcToPoint(Offset(size.width * 0.7866667, size.height * 0.7870370),
        radius:
            Radius.elliptical(size.width * 0.2133333, size.height * 0.1234568),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.2133333, size.height * 0.7870370);
    path_0.arcToPoint(Offset(0, size.height * 0.9104938),
        radius:
            Radius.elliptical(size.width * 0.2133333, size.height * 0.1234568),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(0, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffe8fffa).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(0, 0);
    path_1.lineTo(size.width, 0);
    path_1.lineTo(size.width, size.height * 0.6635802);
    path_1.arcToPoint(Offset(size.width * 0.7866667, size.height * 0.7870370),
        radius:
            Radius.elliptical(size.width * 0.2133333, size.height * 0.1234568),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_1.lineTo(size.width * 0.2133333, size.height * 0.7870370);
    path_1.arcToPoint(Offset(0, size.height * 0.9104938),
        radius:
            Radius.elliptical(size.width * 0.2133333, size.height * 0.1234568),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_1.lineTo(0, 0);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff185083).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
