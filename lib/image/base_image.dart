// @dart=2.9

class BaseImage
{

String id ;
String altText ;
String url ;

BaseImage(this.id, this.altText, this.url);

BaseImage.fronJson(Map<String ,dynamic> jsonObject )
{

  this.id = jsonObject['id'];
  this.altText = jsonObject['altText'];
  this.url = jsonObject['url'];

}
}