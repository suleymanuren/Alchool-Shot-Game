class Data {
  Data({
    this.data,

  });

  Data.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['towns'] != null) {
      data = [];
      json['towns'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  int? success;
  int? status;
  String? message;
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['Datas'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}


