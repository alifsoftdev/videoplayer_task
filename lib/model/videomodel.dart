// To parse this JSON data, do
//
//     final videoModel = videoModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

VideoModel videoModelFromJson(String str) => VideoModel.fromJson(json.decode(str));

String videoModelToJson(VideoModel data) => json.encode(data.toJson());

class VideoModel {
  final Links links;
  final int total;
  final int page;
  final int pageSize;
  final List<Result> results;

  VideoModel({
    required this.links,
    required this.total,
    required this.page,
    required this.pageSize,
    required this.results,
  });

  VideoModel copyWith({
    Links? links,
    int? total,
    int? page,
    int? pageSize,
    List<Result>? results,
  }) =>
      VideoModel(
        links: links ?? this.links,
        total: total ?? this.total,
        page: page ?? this.page,
        pageSize: pageSize ?? this.pageSize,
        results: results ?? this.results,
      );

  factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
    links: Links.fromJson(json["links"]??{}),
    total: json["total"]?? 0,
    page: json["page"]?? 0,
    pageSize: json["page_size"]?? 0,
    results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))?? []),
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
  final int next;
  final dynamic previous;

  Links({
    required this.next,
    required this.previous,
  });

  Links copyWith({
    int? next,
    dynamic previous,
  }) =>
      Links(
        next: next ?? this.next,
        previous: previous ?? this.previous,
      );

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    next: json["next"]?? 0,
    previous: json["previous"],
  );

  Map<String, dynamic> toJson() => {
    "next": next,
    "previous": previous,
  };
}

class Result {
  final String thumbnail;
  final int id;
  final String title;
  final DateTime dateAndTime;
  final String slug;
  final DateTime createdAt;
  final String manifest;
  final int liveStatus;
  final String liveManifest;
  final bool isLive;
  final String channelImage;
  final String channelName;
  final String channelUsername;
  final bool isVerified;
  final String channelSlug;
  final String channelSubscriber;
  final int channelId;
 // final String type;
  final String viewers;
  final String duration;
  final String objectType;

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
   // required this.type,
    required this.viewers,
    required this.duration,
    required this.objectType,
  });

  Result copyWith({
    String? thumbnail,
    int? id,
    String? title,
    DateTime? dateAndTime,
    String? slug,
    DateTime? createdAt,
    String? manifest,
    int? liveStatus,
    String? liveManifest,
    bool? isLive,
    String? channelImage,
    String? channelName,
    String? channelUsername,
    bool? isVerified,
    String? channelSlug,
    String? channelSubscriber,
    int? channelId,
   // String? type,
    String? viewers,
    String? duration,
    String? objectType,
  }) =>
      Result(
        thumbnail: thumbnail ?? this.thumbnail,
        id: id ?? this.id,
        title: title ?? this.title,
        dateAndTime: dateAndTime ?? this.dateAndTime,
        slug: slug ?? this.slug,
        createdAt: createdAt ?? this.createdAt,
        manifest: manifest ?? this.manifest,
        liveStatus: liveStatus ?? this.liveStatus,
        liveManifest: liveManifest ?? this.liveManifest,
        isLive: isLive ?? this.isLive,
        channelImage: channelImage ?? this.channelImage,
        channelName: channelName ?? this.channelName,
        channelUsername: channelUsername ?? this.channelUsername,
        isVerified: isVerified ?? this.isVerified,
        channelSlug: channelSlug ?? this.channelSlug,
        channelSubscriber: channelSubscriber ?? this.channelSubscriber,
        channelId: channelId ?? this.channelId,
      //  type: type ?? this.type,
        viewers: viewers ?? this.viewers,
        duration: duration ?? this.duration,
        objectType: objectType ?? this.objectType,
      );

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    thumbnail: json["thumbnail"]?? '',
    id: json["id"]?? 0,
    title: json["title"]?? '',
    dateAndTime: DateTime.parse(json["date_and_time"]),
    slug: json["slug"]?? '',
    createdAt: DateTime.parse(json["created_at"]),
    manifest: json["manifest"]?? '',
    liveStatus: json["live_status"]?? 0,
    liveManifest: json["live_manifest"]?? '',
    isLive: json["is_live"]?? false,
    channelImage: json["channel_image"]?? '',
    channelName: json["channel_name"]?? '',
    channelUsername:json["channel_username"],
    isVerified: json["is_verified"]?? false,
    channelSlug: json["channel_slug"] ?? {},
    channelSubscriber: json["channel_subscriber"]?? '',
    channelId: json["channel_id"]?? 0,
   // type: json["type"]?? {},
    viewers: json["viewers"]?? '',
    duration: json["duration"]?? '',
    objectType: json["object_type"]?? {},
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
    "channel_username": channelUsername,
    "is_verified": isVerified,
    "channel_slug": channelSlug,
    "channel_subscriber": channelSubscriber,
    "channel_id": channelId,
   // "type":type,
    "viewers": viewers,
    "duration": duration,
    "object_type": objectType,
  };
}

enum ChannelName {
  CHANNEL_NAME_ONE_UMMAH,
  ONE_UMMAH,
  SAKIB_LIVE_TV,
  SAYED_TV_TS
}

final channelNameValues = EnumValues({
  "One Ummah": ChannelName.CHANNEL_NAME_ONE_UMMAH,
  "One Ummah +": ChannelName.ONE_UMMAH,
  "Sakib Live TV": ChannelName.SAKIB_LIVE_TV,
  "Sayed TV TS": ChannelName.SAYED_TV_TS
});

enum ChannelSlug {
  ONE_UMMAH,
  SAKIB_LIVE_TV,
  SAYED_TV_TS,
  TEST_FDF_F_DSFDS_SFSD_SD_SDF
}

final channelSlugValues = EnumValues({
  "one-ummah": ChannelSlug.ONE_UMMAH,
  "sakib-live-tv": ChannelSlug.SAKIB_LIVE_TV,
  "sayed-tv-ts": ChannelSlug.SAYED_TV_TS,
  "test-fdf-f-dsfds-sfsd-sd-sdf": ChannelSlug.TEST_FDF_F_DSFDS_SFSD_SD_SDF
});

enum ChannelUsername {
  SAKIBLIVETV,
  SDFSDF1,
  SDFSDF1_5997
}

final channelUsernameValues = EnumValues({
  "sakiblivetv": ChannelUsername.SAKIBLIVETV,
  "sdfsdf1": ChannelUsername.SDFSDF1,
  "sdfsdf1_5997": ChannelUsername.SDFSDF1_5997
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
