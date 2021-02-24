class Meds{
  String name;
  String formula;
  String power;
  String type;

  Meds(
    this.name,
    this.formula,
    this.power,
    this.type,
  );

  Meds.fromJson(Map<String, dynamic> json){
    name = json['name'];
    formula = json["formula"];
    power = json["power"];
    type = json["type"];
  }
}