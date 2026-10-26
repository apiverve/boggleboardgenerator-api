/// Response models for the Boggle Board Generator API.

/// API Response wrapper.
class BoggleboardgeneratorResponse {
  final String status;
  final dynamic error;
  final BoggleboardgeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BoggleboardgeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BoggleboardgeneratorResponse.fromJson(Map<String, dynamic> json) => BoggleboardgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BoggleboardgeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Boggle Board Generator API.

class BoggleboardgeneratorData {
  List<BoggleboardgeneratorDataBoardItem>? board;
  num? size;
  String? html;
  BoggleboardgeneratorDataImage? image;

  BoggleboardgeneratorData({
    this.board,
    this.size,
    this.html,
    this.image,
  });

  factory BoggleboardgeneratorData.fromJson(Map<String, dynamic> json) => BoggleboardgeneratorData(
      board: (json['board'] as List?)?.map((e) => BoggleboardgeneratorDataBoardItem.fromJson(e)).toList(),
      size: json['size'],
      html: json['html'],
      image: json['image'] != null ? BoggleboardgeneratorDataImage.fromJson(json['image']) : null,
    );
}

class BoggleboardgeneratorDataBoardItem {
  String? 0;
  String? 1;
  String? 2;
  String? 3;

  BoggleboardgeneratorDataBoardItem({
    this.0,
    this.1,
    this.2,
    this.3,
  });

  factory BoggleboardgeneratorDataBoardItem.fromJson(Map<String, dynamic> json) => BoggleboardgeneratorDataBoardItem(
      0: json['0'],
      1: json['1'],
      2: json['2'],
      3: json['3'],
    );
}

class BoggleboardgeneratorDataImage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  BoggleboardgeneratorDataImage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory BoggleboardgeneratorDataImage.fromJson(Map<String, dynamic> json) => BoggleboardgeneratorDataImage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class BoggleboardgeneratorRequest {
  int? size;
  bool? image;

  BoggleboardgeneratorRequest({
    this.size,
    this.image,
  });

  Map<String, dynamic> toJson() => {
      if (size != null) 'size': size,
      if (image != null) 'image': image,
    };
}
