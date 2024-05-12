import 'package:exercise_forecast/logic/model/prediction_result.dart';
import 'package:exercise_forecast/main.dart';
import 'package:exercise_forecast/ui/widget/you_tube_video_player.dart';
import 'package:exercise_forecast/utils/build_context.dart';
import 'package:exercise_forecast/utils/video_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PredictionResultPageArgs {
  const PredictionResultPageArgs({required this.approachCount});

  final int approachCount;
}

class PredictionResultPage extends ConsumerWidget {
  const PredictionResultPage({super.key, required this.args});

  final PredictionResultPageArgs args;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<PredictionResult> asyncResult = ref.watch(predictionResultProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
      ),
      body: asyncResult.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (Object err, StackTrace? stack) => Center(child: Text('Error: $err')),
        data: (PredictionResult result) => ListView(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          children: <Widget>[
            if (result.chartData.isEmpty) const Placeholder() else SvgPicture.string(result.chartData),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(result.description.isEmpty ? 'Description' : result.description),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Exercise recommendations: 12 times in ${args.approachCount} approaches',
                style: context.textStyles.noteText,
              ),
            ),
            YouTubeVideoPlayer(url: result.videoUrl),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: OutlinedButton.icon(
                onPressed: () => VideoLauncher.run(
                  result.videoUrl,
                  onError: (String message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(message)),
                    );
                  },
                ),
                icon: const Icon(Icons.video_library),
                label: const Text('Launch video in YouTube'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
