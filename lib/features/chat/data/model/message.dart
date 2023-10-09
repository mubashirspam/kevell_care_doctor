class Message {
  final String msg;
  final DateTime time;

  Message({required this.msg, required this.time});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      msg: json['msg'] as String,
      time: DateTime.parse(json['time'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'msg': msg,
      'time': time.toIso8601String(),
    };
  }
}
