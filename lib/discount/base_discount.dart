// @dart=2.9

class BaseDiscount {
   double minQuantity;

   double maxQuantity;

   double amnout;

   DateTime endDate;

  BaseDiscount(this.minQuantity, this.maxQuantity, this.amnout, this.endDate);

  BaseDiscount.fromJson(Map<String, dynamic> JsonObject) {
    this.minQuantity = JsonObject['min_quantity'];
    this.maxQuantity = JsonObject['max_quantity'];
    this.endDate = DateTime.parse(JsonObject['end_date']);


  }
}
