class Dummy {
  int? id;
  String? name;
  String? job;

  Dummy({this.id, this.name, this.job});

  Dummy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    job = json['job'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['job'] = job;
    return data;
  }

  static List<Dummy> toJsonList(List? data) {
    if (data == null) {
      return [];
    }
    return data.map((e) => Dummy.fromJson(e)).toList();
  }
}
