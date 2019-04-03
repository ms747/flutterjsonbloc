class Party {
  final name;
  final List<PartyData> data;
  Party({this.name, this.data});

  factory Party.fromJson(Map<String, dynamic> jsonData) {
    return Party(
        name: jsonData["name"], data: parsePartyData(jsonData["data"]));
  }

  static List<PartyData> parsePartyData(partydatalist) {
    var _list = partydatalist as List;
    var newList = _list.map((data) {
      return PartyData.fromJson(data);
    }).toList();
    return newList;
  }
}

class PartyData {
  final String manifesto;
  final String img;

  PartyData({this.manifesto, this.img});

  factory PartyData.fromJson(Map<String, dynamic> jsonData) {
    return PartyData(manifesto: jsonData["manifesto"], img: jsonData["img"]);
  }
}

class PartyService {
  static List<Party> parseParties(jsonData) {
    var list = jsonData as List;
    List<Party> newList = list.map((jsondata){
      return Party.fromJson(jsondata);
    }).toList();
    return newList;
  }
}
