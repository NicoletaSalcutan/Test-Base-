class Profile{
  String key = "";
  String nume = "";
  String prenume = "";
  String functie = "";

  Profile();

   Profile.fromJson(Map data) {
     this.key = data['key'];
     this.nume = data['nume'];
     this.prenume = data['prenume'];
     this.functie = data['functie'];
  }

  toJson(){
     var map = {
       "key" : key,
       "nume" : nume,
       "prenume" : prenume,
       "functie" : functie,
     };
     return map;
  }
}
