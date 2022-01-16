class CheckModel {
  late int id;
  late String title;
  late double price; 
  late DateTime creationDate;
  late bool isDriking;
  late bool waiterPercentage;
  // poderia adicionar um campo para adicionar o local onde a conta foi feita! (funcinalidade de mostrar no mapa?)

  CheckModel({id, title, price, creationDate, someoneDriking, waiterPercentage});

  Map<String, dynamic> toMap() {
    return ({
      "id":id,
      "title": title,
      "price": price,
      "creation_date": creationDate,
      "isDriking": isDriking,
      "waiterPercentage":waiterPercentage,
    });
  }
}