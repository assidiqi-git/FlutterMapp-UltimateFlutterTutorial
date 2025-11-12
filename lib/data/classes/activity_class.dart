class Activity {
  final String activity;
  final double availability;
  final String type;
  final int participants;
  final double price;
  final String accessibility;
  final String duration;
  final bool kidFriendly;
  final String link;
  final String key;

  const Activity({
    required this.activity,
    required this.availability,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
    required this.kidFriendly,
    required this.link,
    required this.key,
  });

  factory Activity.fromJson(Map<String, dynamic> json) {
    // Menggunakan pattern matching (Dart 3+) sesuai referensi Anda
    // Kita gunakan 'num' untuk 'participants', 'availability', dan 'price'
    // agar aman saat parsing JSON (bisa int atau double) lalu kita konversi.
    return switch (json) {
      {
        'activity': String activity,
        'availability': num availability,
        'type': String type,
        'participants': num participants,
        'price': num price,
        'accessibility': String accessibility,
        'duration': String duration,
        'kidFriendly': bool kidFriendly,
        'link': String link,
        'key': String key,
      } =>
        Activity(
          activity: activity,
          availability: availability.toDouble(),
          type: type,
          participants: participants.toInt(),
          price: price.toDouble(),
          accessibility: accessibility,
          duration: duration,
          kidFriendly: kidFriendly,
          link: link,
          key: key,
        ),
      _ => throw const FormatException('Failed to load activity.'),
    };
  }
}
