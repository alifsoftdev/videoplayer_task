// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Temperatures temperaturesFromJson(String str) => Temperatures.fromJson(json.decode(str));

String temperaturesToJson(Temperatures data) => json.encode(data.toJson());

class Temperatures {
  Links links;
  int total;
  int page;
  int pageSize;
  List<Result> results;

  Temperatures({
    required this.links,
    required this.total,
    required this.page,
    required this.pageSize,
    required this.results,
  });

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    links: Links.fromJson(json["links"]),
    total: json["total"],
    page: json["page"],
    pageSize: json["page_size"],
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "links": links.toJson(),
    "total": total,
    "page": page,
    "page_size": pageSize,
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Links {
  int next;
  dynamic previous;

  Links({
    required this.next,
    required this.previous,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    next: json["next"],
    previous: json["previous"],
  );

  Map<String, dynamic> toJson() => {
    "next": next,
    "previous": previous,
  };
}

class Result {
  String thumbnail;
  int id;
  String title;
  DateTime dateAndTime;
  String slug;
  DateTime createdAt;
  String manifest;
  int liveStatus;
  String liveManifest;
  bool isLive;
  String channelImage;
  String channelName;
  String channelUsername;
  bool isVerified;
  String channelSlug;
  String channelSubscriber;
  int channelId;
  var type;
  String viewers;
  String duration;
  var objectType;

  Result({
    required this.thumbnail,
    required this.id,
    required this.title,
    required this.dateAndTime,
    required this.slug,
    required this.createdAt,
    required this.manifest,
    required this.liveStatus,
    required this.liveManifest,
    required this.isLive,
    required this.channelImage,
    required this.channelName,
    required this.channelUsername,
    required this.isVerified,
    required this.channelSlug,
    required this.channelSubscriber,
    required this.channelId,
    required this.type,
    required this.viewers,
    required this.duration,
    required this.objectType,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    thumbnail: json["thumbnail"],
    id: json["id"],
    title: json["title"],
    dateAndTime: DateTime.parse(json["date_and_time"]),
    slug: json["slug"],
    createdAt: DateTime.parse(json["created_at"]),
    manifest: json["manifest"],
    liveStatus: json["live_status"],
    liveManifest: json["live_manifest"],
    isLive: json["is_live"],
    channelImage: json["channel_image"],
    channelName: json["channel_name"],
    channelUsername: json["channel_username"],
    isVerified: json["is_verified"],
    channelSlug: json["channel_slug"],
    channelSubscriber: json["channel_subscriber"],
    channelId: json["channel_id"],
    type: json["type"],
    viewers: json["viewers"],
    duration: json["duration"],
    objectType: json["object_type"],
  );

  Map<String, dynamic> toJson() => {
    "thumbnail": thumbnail,
    "id": id,
    "title": title,
    "date_and_time": dateAndTime.toIso8601String(),
    "slug": slug,
    "created_at": createdAt.toIso8601String(),
    "manifest": manifest,
    "live_status": liveStatus,
    "live_manifest": liveManifest,
    "is_live": isLive,
    "channel_image": channelImage,
    "channel_name": channelName,
    "channel_username": channelUsernameValues.reverse[channelUsername],
    "is_verified": isVerified,
    "channel_slug": channelSlug,
    "channel_subscriber": channelSubscriber,
    "channel_id": channelId,
    "type": typeValues.reverse[type],
    "viewers": viewers,
    "duration": duration,
    "object_type": objectTypeValues.reverse[objectType],
  };
}

enum ChannelUsername {
  SAKIBLIVETV,
  SDFSDF1,
  SDFSDF1_5997,
  TESTJOYCHANNEL
}

final channelUsernameValues = EnumValues({
  "sakiblivetv": ChannelUsername.SAKIBLIVETV,
  "sdfsdf1": ChannelUsername.SDFSDF1,
  "sdfsdf1_5997": ChannelUsername.SDFSDF1_5997,
  "testjoychannel": ChannelUsername.TESTJOYCHANNEL
});

enum ObjectType {
  VIDEO
}

final objectTypeValues = EnumValues({
  "video": ObjectType.VIDEO
});

enum Type {
  NASHEED,
  OTHERS,
  TILAWAT,
  WAZ
}

final typeValues = EnumValues({
  "Nasheed": Type.NASHEED,
  "Others": Type.OTHERS,
  "Tilawat": Type.TILAWAT,
  "Waz": Type.WAZ
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
