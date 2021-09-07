// @dart=2.9

import 'package:flutter_shop/prodcut/base_product.dart';

abstract class BaseCartItem
{
    BaseProdcut  product   ;
   double quantity  ;

  BaseCartItem(this.product, this.quantity);


  BaseCartItem.fronJson(  Map<String ,dynamic> JsonObject )
  {
    this.product = BaseProdcut.fromJson( JsonObject['product'] ) ;
    this.quantity = JsonObject['quantity']  ;


  }
  double discount ()
  {

    return 0.0 ;
  }


}