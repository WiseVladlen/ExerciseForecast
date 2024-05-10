import 'package:exercise_forecast/logic/model/gender.dart';
import 'package:exercise_forecast/utils/text_format.dart';
import 'package:flutter/material.dart';

Future<void> showGenderPickerModalBottomSheet(
  BuildContext context, {
  Gender? initialValue,
  required void Function(Gender) onSelect,
}) {
  return showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(12),
        right: Radius.circular(12),
      ),
    ),
    builder: (BuildContext context) => Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Wrap(
        children: Gender.values
            .map(
              (Gender gender) => ListTile(
                leading: gender == initialValue ? const Icon(Icons.check) : const SizedBox.square(dimension: 24),
                title: Text(gender.toTitleFormat()),
                onTap: () {
                  onSelect(gender);
                  Navigator.of(context).pop();
                },
              ),
            )
            .toList(),
      ),
    ),
  );
}
