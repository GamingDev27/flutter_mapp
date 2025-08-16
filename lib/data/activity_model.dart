class ActivityModel {
  final String activity;
  final double availability;
  final String type;
  final int participants;
  final double price;
  final String accessibility;
  final String duration;

  const ActivityModel({
    required this.activity,
    required this.availability,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
  });

  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'activity': String activity,
        'availability': double availability,
        'type': String type,
        'participants': int participants,
        'price': double price,
        'accessibility': String accessibility,
        'duration': String duration,
      } =>
        ActivityModel(
          activity: activity,
          availability: availability,
          type: type,
          participants: participants,
          price: price,
          accessibility: accessibility,
          duration: duration,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}
