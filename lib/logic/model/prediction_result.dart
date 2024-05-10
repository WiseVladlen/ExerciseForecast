class PredictionResult {
  const PredictionResult({
    required this.chartData,
    required this.description,
    required this.videoUrl,
  });

  static const PredictionResult empty = PredictionResult(chartData: '', description: '', videoUrl: '');

  final String chartData;
  final String description;
  final String videoUrl;
}
