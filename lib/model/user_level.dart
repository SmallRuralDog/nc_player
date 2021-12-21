class UserLevel {
  UserLevel({
    this.userId,
    this.info,
    this.progress,
    this.nextPlayCount,
    this.nextLoginCount,
    this.nowPlayCount,
    this.nowLoginCount,
    this.level,
  });

  UserLevel.fromJson(dynamic json) {
    userId = json['userId'];
    info = json['info'];
    progress = json['progress'];
    nextPlayCount = json['nextPlayCount'];
    nextLoginCount = json['nextLoginCount'];
    nowPlayCount = json['nowPlayCount'];
    nowLoginCount = json['nowLoginCount'];
    level = json['level'];
  }

  int? userId;
  String? info;
  dynamic progress;
  int? nextPlayCount;
  int? nextLoginCount;
  int? nowPlayCount;
  int? nowLoginCount;
  int? level;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['info'] = info;
    map['progress'] = progress;
    map['nextPlayCount'] = nextPlayCount;
    map['nextLoginCount'] = nextLoginCount;
    map['nowPlayCount'] = nowPlayCount;
    map['nowLoginCount'] = nowLoginCount;
    map['level'] = level;
    return map;
  }
}
