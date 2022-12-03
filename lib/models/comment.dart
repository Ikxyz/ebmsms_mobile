import "dart:convert";

class Comment {
  String id;
  String uid;
  String streamId;
  String comment;
  String photoUrl;
  String name;
  num timestamp;
  Comment({
    required this.id,
    required this.uid,
    required this.streamId,
    required this.comment,
    required this.photoUrl,
    required this.name,
    required this.timestamp,
  });

  Comment copyWith({
    String? id,
    String? uid,
    String? streamId,
    String? comment,
    String? photoUrl,
    String? name,
    num? timestamp,
  }) {
    return Comment(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      streamId: streamId ?? this.streamId,
      comment: comment ?? this.comment,
      photoUrl: photoUrl ?? this.photoUrl,
      name: name ?? this.name,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "uid": uid,
      "streamId": streamId,
      "comment": comment,
      "photoUrl": photoUrl,
      "name": name,
      "timestamp": timestamp,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      id: map["id"],
      uid: map["uid"],
      streamId: map["streamId"],
      comment: map["comment"],
      photoUrl: map["photoUrl"],
      name: map["name"],
      timestamp: map["timestamp"],
    );
  }

  String toJson() => json.encode(toMap());

  factory Comment.fromJson(String source) =>
      Comment.fromMap(json.decode(source));

  @override
  String toString() {
    return "Comment(id: $id, uid: $uid, streamId: $streamId, comment: $comment, photoUrl: $photoUrl, name: $name, timestamp: $timestamp)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Comment &&
        other.id == id &&
        other.uid == uid &&
        other.streamId == streamId &&
        other.comment == comment &&
        other.photoUrl == photoUrl &&
        other.name == name &&
        other.timestamp == timestamp;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        uid.hashCode ^
        streamId.hashCode ^
        comment.hashCode ^
        photoUrl.hashCode ^
        name.hashCode ^
        timestamp.hashCode;
  }
}
