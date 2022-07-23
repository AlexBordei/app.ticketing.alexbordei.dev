import 'package:ticketing_app/app/data/models/ticketing_response_model.dart';

class TicketingRequest {
  String? title;
  String? content;
  String? status;
  Acf? acf;

  TicketingRequest({this.title, this.content, this.status, this.acf});

  TicketingRequest.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    status = json['status'];
    acf = json['acf'] != null ? Acf?.fromJson(json['acf']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['content'] = content;
    data['status'] = status;
    if (acf != null) {
      data['acf'] = acf?.toJson();
    }
    return data;
  }
}
