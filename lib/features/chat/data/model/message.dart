class Message {
  final int? id;
  final String? message;
  final DateTime time;
  final bool isReceiving;

  Message({
    required this.id,
    required this.message,
    required this.time,
    required this.isReceiving,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'] as int?,
      message: json['message'] as String?,
      time: DateTime.parse(json['time'] as String),
      isReceiving: json['isReceiving'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'message': message,
      'time': time.toIso8601String(),
      'isReceiving': isReceiving,
    };
  }
}
