import 'package:url_launcher/url_launcher.dart';

abstract class VideoLauncher {
  static Future<void> run(String path, {required dynamic Function(String message) onError}) async {
    final Uri url = Uri.parse(path);

    if (path.isEmpty) return onError('Video not found');

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      onError('Failed to start the video');
    }
  }
}
