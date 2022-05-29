// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String TopicValueKey = 'topic';

mixin $StoryGeneratorView on StatelessWidget {
  final TextEditingController topicController = TextEditingController();
  final FocusNode topicFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    topicController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            TopicValueKey: topicController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    topicController.dispose();
    topicFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get topicValue => this.formValueMap[TopicValueKey] as String?;

  bool get hasTopic => this.formValueMap.containsKey(TopicValueKey);

  bool get hasTopicValidationMessage =>
      this.fieldsValidationMessages[TopicValueKey]?.isNotEmpty ?? false;

  String? get topicValidationMessage =>
      this.fieldsValidationMessages[TopicValueKey];
}

extension Methods on FormViewModel {
  setTopicValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TopicValueKey] = validationMessage;
}
