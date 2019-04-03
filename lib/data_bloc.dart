import 'dart:convert' as json;
import 'dart:io';
import 'party_data.dart';

class PartyBloc {
  String _currentPartyName;
  List<Party> _partyData;

  PartyBloc() {
    loadJson();
  }


  void loadJson() async {
    File jsonFile = new File("./parties.json");
    String fileText = await jsonFile.readAsString();
    var parsedJson = json.jsonDecode(fileText);
    _partyData = PartyService.parseParties(parsedJson);
    print(_partyData[0].name);
    
  }
}
