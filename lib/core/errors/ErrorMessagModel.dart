
class ErrorMessagModel {
  ErrorMessagModel({
      this.fault,});

  ErrorMessagModel.fromJson(dynamic json) {
    fault = json['fault'] != null ? Fault.fromJson(json['fault']) : null;
  }
  Fault? fault;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fault != null) {
      map['fault'] = fault?.toJson();
    }
    return map;
  }

}
class Detail {
  Detail({
    this.errorcode,});

  Detail.fromJson(dynamic json) {
    errorcode = json['errorcode'];
  }
  String? errorcode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['errorcode'] = errorcode;
    return map;
  }

}
class Fault {
  Fault({
    this.faultstring,
    this.detail,});

  Fault.fromJson(dynamic json) {
    faultstring = json['faultstring'];
    detail = json['detail'] != null ? Detail.fromJson(json['detail']) : null;
  }
  String? faultstring;
  Detail? detail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['faultstring'] = faultstring;
    if (detail != null) {
      map['detail'] = detail?.toJson();
    }
    return map;
  }

}
/*{
  "fault": {
    "faultstring": "Failed to resolve API Key variable request.queryparam.api-key",
    "detail": {
      "errorcode": "steps.oauth.v2.FailedToResolveAPIKey"
    }
  }
}*/


/*{
  "fault": {
    "faultstring": "Invalid ApiKey",
    "detail": {
      "errorcode": "oauth.v2.InvalidApiKey"
    }
  }
}*/