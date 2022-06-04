import 'package:baf/core/shared/styles.dart';
import 'package:baf/widgets/animation/animated_flip_counter.dart';
import 'package:baf/widgets/buttons/number_counter/number_counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NumberCounterView extends StatelessWidget {
  final void Function(int count)? onChanged;
  final int value;
  final bool isDivider;
  const NumberCounterView(
      {Key? key, required this.value, this.onChanged, this.isDivider = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NumberCounterViewModel>.reactive(
      onModelReady: (model) => model.init(value),
      builder: (context, model, child) => Container(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Transform.scale(
                    scale: 0.6,
                    child: FloatingActionButton(
                      heroTag: "btn1",
                      onPressed: () {
                        model.subtractValue();
                        onChanged!(model.counter.value);
                      },
                      elevation: 1.5,
                      backgroundColor: Colors.white,
                      child: const Icon(
                        Icons.remove,
                        color: kcBlackColor,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: AnimatedFlipCounterWidget(
                      value: model.counter.value, fractionDigits: 0),
                ),
                Expanded(
                  flex: 1,
                  child: Transform.scale(
                    scale: 0.6,
                    child: FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: () {
                        model.addValue();
                        onChanged!(model.counter.value);
                      },
                      backgroundColor: Colors.white,
                      elevation: 1.5,
                      child: const Icon(
                        Icons.add,
                        color: kcBlackColor,
                        size: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
            isDivider
                ? const Divider(
                    thickness: 1.0,
                  )
                : Container()
          ],
        ),
      ),
      viewModelBuilder: () => NumberCounterViewModel(),
    );
  }
}
