class Registration{
  final bool status ;
  Registration({required this.status});
  factory Registration.fromjson(Map<String , dynamic>json){
    return Registration(status: json["status"]);
  }
}