import 'dart:math';

import 'package:baf/core/constants/story_constant.dart';
import 'package:baf/core/extension/random_item_extension.dart';
import 'package:baf/models/story/story_model.dart';

class StoryMixin {
  static Future<StoryModel>? createRandomStory() async {
    Random random = Random();
    var topic = STORY.TOPICS.randomItem();
    var count = random.nextInt(10);

    return StoryModel(topic: topic, count: count.toString(), story: '');
  }
}
