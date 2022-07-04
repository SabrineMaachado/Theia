// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UnityModel {
  String? iconUrl;
  String? id;
  String? url;
  String? value;

  UnityModel({
    this.iconUrl,
    this.id,
    this.url,
    this.value,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iconUrl': iconUrl,
      'id': id,
      'url': url,
      'value': value,
    };
  }

  factory UnityModel.fromMap(Map<String, dynamic> map) {
    return UnityModel(
      iconUrl: map['iconUrl'] != null ? map['iconUrl'] as String : null,
      id: map['id'] != null ? map['id'] as String : null,
      url: map['url'] != null ? map['url'] as String : null,
      value: map['value'] != null ? map['value'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UnityModel.fromJson(String source) => UnityModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
