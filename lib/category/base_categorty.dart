// @dart=2.9

abstract class BaseCategory {
   String id;

   String title;

  BaseCategory(this.id, this.title);

  BaseCategory.fromJsom(Map<String, dynamic> JsonObject) {
    this.id = JsonObject['id'];
    this.title = JsonObject['title'];
  }
}
