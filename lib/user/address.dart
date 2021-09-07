class Address
{
  String streetName = " "  ;
  String streetNumber = " ";
  String city  = " ";
  String state = " ";
  String country = " ";
  String postCode = " ";

  Address.fromJson(Map<String , dynamic > JsonObject )
{
  this.streetName = JsonObject['street_name']   ;
  this.streetNumber = JsonObject['street_number']   ;
  this.city = JsonObject['city']   ;
  this.state = JsonObject['state']   ;
  this.country = JsonObject['country']   ;
  this.postCode = JsonObject['post_code']   ;


}

}