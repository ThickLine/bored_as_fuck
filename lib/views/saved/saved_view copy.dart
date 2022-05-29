import 'package:baf/app/app.router.dart';
import 'package:baf/core/enum/systemwide_enums.dart';
import 'package:baf/core/shared/styles.dart';
import 'package:baf/core/shared/ui_helpers.dart';
import 'package:baf/layout/wrapper_layout.dart';
import 'package:baf/models/activity/activity_model.dart';
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
    final keys = GlobalKey<AnimatedListState>();
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
            toolbarHeight: 100,
            toolbarOpacity: 0.5,
            title: const Text(
              "Saved Items",
              textAlign: TextAlign.center,
              style: TextStyle(color: kcDarkPlaceholderColor),
            ),
          ),
          body: Container(
              padding: kPagePadding,
              child: model.list.isNotEmpty
                  ? Stack(children: [
                      AnimatedList(
                        key: keys,
                        initialItemCount: model.list.length,
                        itemBuilder: (context, index, animation) {
                          return SlideTransition(
                            position: animation.drive(Tween<Offset>(
                                    begin: const Offset(1, 0),
                                    end: const Offset(0, 0))
                                .chain(CurveTween(curve: Curves.ease))),
                            child: InkWell(
                              onTap: () => route(context, model.list[index]),
                              child: Card(
                                child: Container(
                                  height: 100,
                                  child: Row(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        child: Row(
                                          children: [
                                            Center(
                                              child: Padding(
                                                padding: EdgeInsets.all(10),
                                                child: Icon(
                                                  Icons.favorite,
                                                  color: kcPlaceholderColor,
                                                  size: 25.0,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: Alignment.topLeft,
                                                child: Column(
                                                  children: [
                                                    Expanded(
                                                      flex: 5,
                                                      child: ListTile(
                                                        title: Text(model
                                                                .list[index]
                                                                .title ??
                                                            ""),
                                                        subtitle: Text(model
                                                                .list[index]
                                                                .description ??
                                                            ""),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              flex: 8,
                                            ),
                                            PopupMenuButton(
                                              onSelected: (value) async {
                                                if (value == "share") {
                                                  await model.onShare(
                                                      model.list[index]);
                                                }

                                                if (value == "delete") {
                                                  var item = model.list[index];
                                                  var res = await model
                                                      .onDeleteItem();

                                                  if (res == true) {
                                                    keys.currentState!
                                                        .removeItem(index,
                                                            (_, animation) {
                                                      return SizeTransition(
                                                        sizeFactor: animation,
                                                        child: Card(
                                                          child: ListTile(
                                                              leading:
                                                                  const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            8.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .favorite,
                                                                  color:
                                                                      kcPlaceholderColor,
                                                                  size: 25.0,
                                                                ),
                                                              ),
                                                              title: Text(model
                                                                      .list[
                                                                          index]
                                                                      .title ??
                                                                  ""),
                                                              trailing:
                                                                  const Icon(Icons
                                                                      .more_vert)),
                                                        ),
                                                      );
                                                    },
                                                            duration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        500));
                                                    await model
                                                        .deleteItem(item);
                                                  }
                                                }
                                              },
                                              child:
                                                  const Icon(Icons.more_vert),
                                              itemBuilder: (context) {
                                                return [
                                                  PopupMenuItem(
                                                    value: "share",
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Icon(Icons.share),
                                                        Text('Share'),
                                                      ],
                                                    ),
                                                  ),
                                                  PopupMenuItem(
                                                    value: "delete",
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Icon(Icons.delete),
                                                        Text('Delete')
                                                      ],
                                                    ),
                                                  )
                                                ];
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                elevation: 8,
                                margin: EdgeInsets.all(10),
                              ),

                              // Card(
                              //   child: ListTile(
                              //     leading: const Padding(
                              //       padding: EdgeInsets.all(8.0),
                              //       child: Icon(
                              //         Icons.favorite,
                              //         color: kcPlaceholderColor,
                              //         size: 25.0,
                              //       ),
                              //     ),
                              //     title: Column(
                              //       mainAxisSize: MainAxisSize.min,
                              //       children: [
                              //         Text(model.list[index].title ?? ""),
                              //         Text(model.list[index].description ?? ""),
                              //       ],
                              //     ),
                              //     trailing: PopupMenuButton(
                              //       onSelected: (value) async {
                              //         if (value == "share") {
                              //           await model.onShare(model.list[index]);
                              //         }

                              //         if (value == "delete") {
                              //           var item = model.list[index];
                              //           var res = await model.onDeleteItem();

                              //           if (res == true) {
                              //             keys.currentState!.removeItem(index,
                              //                 (_, animation) {
                              //               return SizeTransition(
                              //                 sizeFactor: animation,
                              //                 child: Card(
                              //                   child: ListTile(
                              //                       leading: const Padding(
                              //                         padding:
                              //                             EdgeInsets.all(8.0),
                              //                         child: Icon(
                              //                           Icons.favorite,
                              //                           color:
                              //                               kcPlaceholderColor,
                              //                           size: 25.0,
                              //                         ),
                              //                       ),
                              //                       title: Text(model
                              //                               .list[index]
                              //                               .title ??
                              //                           ""),
                              //                       trailing: const Icon(
                              //                           Icons.more_vert)),
                              //                 ),
                              //               );
                              //             },
                              //                 duration: const Duration(
                              //                     milliseconds: 500));
                              //             await model.deleteItem(item);
                              //           }
                              //         }
                              //       },
                              //       child: const Icon(Icons.more_vert),
                              //       itemBuilder: (context) {
                              //         return [
                              //           PopupMenuItem(
                              //             value: "share",
                              //             child: Row(
                              //               mainAxisAlignment:
                              //                   MainAxisAlignment.spaceBetween,
                              //               children: const [
                              //                 Icon(Icons.share),
                              //                 Text('Share'),
                              //               ],
                              //             ),
                              //           ),
                              //           PopupMenuItem(
                              //             value: "delete",
                              //             child: Row(
                              //               mainAxisAlignment:
                              //                   MainAxisAlignment.spaceBetween,
                              //               children: const [
                              //                 Icon(Icons.delete),
                              //                 Text('Delete')
                              //               ],
                              //             ),
                              //           )
                              //         ];
                              //       },
                              //     ),
                              //   ),
                              // ),
                            ),
                          );
                        },
                      ),
                      // ListView.builder(
                      //   shrinkWrap: true,
                      //   controller: scrollController,
                      //   physics: const ClampingScrollPhysics(),
                      //   itemCount: model.list.length,
                      //   itemBuilder: (context, index) => InkWell(
                      //     onTap: () => model.onRoute(model.list[index]),
                      //     child: Card(
                      //       child: ListTile(
                      //         leading: const Padding(
                      //           padding: EdgeInsets.all(8.0),
                      //           child: Icon(
                      //             Icons.favorite,
                      //             color: kcPlaceholderColor,
                      //             size: 25.0,
                      //           ),
                      //         ),
                      //         title: Text(model.list[index].activity ?? ""),
                      //         trailing: PopupMenuButton(
                      //           onSelected: (value) async {
                      //             if (value == "share") {
                      //               await model.onShare(model.list[index]);
                      //             }

                      //             if (value == "delete") {
                      //               await model.onDeleteItem(model.list[index]);
                      //             }
                      //           },
                      //           child: const Icon(Icons.more_vert),
                      //           itemBuilder: (context) {
                      //             return [
                      //               PopupMenuItem(
                      //                 value: "share",
                      //                 child: Row(
                      //                   mainAxisAlignment:
                      //                       MainAxisAlignment.spaceBetween,
                      //                   children: const [
                      //                     Icon(Icons.share),
                      //                     Text('Share'),
                      //                   ],
                      //                 ),
                      //               ),
                      //               PopupMenuItem(
                      //                 value: "delete",
                      //                 child: Row(
                      //                   mainAxisAlignment:
                      //                       MainAxisAlignment.spaceBetween,
                      //                   children: const [
                      //                     Icon(Icons.delete),
                      //                     Text('Delete')
                      //                   ],
                      //                 ),
                      //               )
                      //             ];
                      //           },
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ])
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(
                          child: Icon(
                            Icons.inbox_outlined,
                            color: kcWhiteColor,
                            size: 80,
                          ),
                        )
                      ],
                    )),
        ),
      ),
      viewModelBuilder: () => SavedViewModel(),
    );
  }

  Future<void> route(context, ActivityModel data) {
    switch (data.type) {
      case ActivityType.RECIPE:
        return Navigator.popAndPushNamed(context, Routes.recipeView,
            arguments: RecipeViewArguments(data: data.activity));
      case ActivityType.STORY:
        return Navigator.popAndPushNamed(context, Routes.storyView,
            arguments: StoryViewArguments(data: data.activity));
      case ActivityType.TODO:
        return Navigator.popAndPushNamed(context, Routes.recipeView,
            arguments: RecipeViewArguments(data: data.activity));
      default:
        return Navigator.popAndPushNamed(context, Routes.recipeView,
            arguments: RecipeViewArguments(data: data.activity));
    }
  }
}
