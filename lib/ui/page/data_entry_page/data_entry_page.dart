import 'package:exercise_forecast/logic/model/gender.dart';
import 'package:exercise_forecast/main.dart';
import 'package:exercise_forecast/ui/bottom_sheet/gender_picker_bottom_sheet.dart';
import 'package:exercise_forecast/ui/page/data_entry_page/data_entry_state.dart';
import 'package:exercise_forecast/ui/page/prediction_result_page/prediction_result_page.dart';
import 'package:exercise_forecast/ui/widget/outlined_text_field.dart';
import 'package:exercise_forecast/utils/text_format.dart';
import 'package:exercise_forecast/utils/validator/age_validator.dart';
import 'package:exercise_forecast/utils/validator/duration_validator.dart';
import 'package:exercise_forecast/utils/validator/height_validator.dart';
import 'package:exercise_forecast/utils/validator/name_validator.dart';
import 'package:exercise_forecast/utils/validator/weight_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DataEntryPage extends ConsumerWidget {
  const DataEntryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entry data'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        children: <Widget>[
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) => StandardTextField.username(
              errorText:
                  ref.watch(dataEntryStateProvider.select((DataEntryState value) => value.usernameValidator.hasError))
                      ? NameValidationError.message
                      : null,
              padding: const EdgeInsets.symmetric(vertical: 8),
              onChanged: (String value) {
                ref.read(dataEntryStateProvider.notifier).changeUsername(value);
              },
            ),
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) => StandardTextField.age(
              padding: const EdgeInsets.symmetric(vertical: 8),
              errorText: ref.watch(dataEntryStateProvider.select((DataEntryState value) => value.ageValidator.hasError))
                  ? AgeValidationError.message
                  : null,
              onChanged: (String value) {
                ref.read(dataEntryStateProvider.notifier).changeAge(value);
              },
            ),
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) => StandardTextField.durationOfExercise(
              errorText:
                  ref.watch(dataEntryStateProvider.select((DataEntryState value) => value.durationValidator.hasError))
                      ? DurationValidationError.message
                      : null,
              padding: const EdgeInsets.symmetric(vertical: 8),
              onChanged: (String value) {
                ref.read(dataEntryStateProvider.notifier).changeDurationOfExercise(value);
              },
            ),
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              final Gender? gender = ref.watch(dataEntryStateProvider.select((DataEntryState value) => value.gender));
              final String initialValue = gender?.toTitleFormat() ?? 'Undefined';

              return ReadableTextField(
                labelText: 'Gender',
                initialValue: initialValue,
                errorText: gender == null ? 'The gender of the person must be specified' : null,
                padding: const EdgeInsets.symmetric(vertical: 8),
                onTap: () {
                  showGenderPickerModalBottomSheet(
                    context,
                    initialValue: ref.read(dataEntryStateProvider).gender,
                    onSelect: (Gender value) {
                      ref.read(dataEntryStateProvider.notifier).changeGender(value);
                    },
                  );
                },
              );
            },
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) => StandardTextField.height(
              errorText:
                  ref.watch(dataEntryStateProvider.select((DataEntryState value) => value.heightValidator.hasError))
                      ? HeightValidationError.message
                      : null,
              padding: const EdgeInsets.symmetric(vertical: 8),
              onChanged: (String value) {
                ref.read(dataEntryStateProvider.notifier).changeHeight(value);
              },
            ),
          ),
          Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) => StandardTextField.weight(
              errorText:
                  ref.watch(dataEntryStateProvider.select((DataEntryState value) => value.weightValidator.hasError))
                      ? WeightValidationError.message
                      : null,
              padding: const EdgeInsets.symmetric(vertical: 8),
              onChanged: (String value) {
                ref.read(dataEntryStateProvider.notifier).changeWeight(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) => OutlinedButton(
                onPressed: !ref.watch(dataEntryStateProvider.select((DataEntryState value) => value.isValid))
                    ? null
                    : () {
                        Navigator.of(context).push(
                          MaterialPageRoute<dynamic>(
                            builder: (BuildContext context) => PredictionResultPage(
                              args: PredictionResultPageArgs(
                                approachCount: int.parse(ref.read(dataEntryStateProvider).durationValidator.value) ~/ 5,
                              ),
                            ),
                          ),
                        );
                      },
                child: const Text('Calculate'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
