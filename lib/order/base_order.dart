// @dart=2.9

import 'package:flutter_shop/cart/base_cart.dart';
import 'package:flutter_shop/payment/base_payment.dart';
import 'package:flutter_shop/user/customer.dart';

 class BaseOrder {
  BaseCart cart;

  Customer customer;

  BasePayment payment;

  BaseOrder(this.cart, this.customer, this.payment);


  BaseOrder.fromJson( Map<String , dynamic> JsonObject )
  {
      this.customer = Customer.fromJson(JsonObject['customer']) ;
      this.cart = BaseCart.fromJson(JsonObject['cart']);
      this.payment = BasePayment.fromJson( JsonObject['payment'] ) ;

  }



  double total ()
  {
    return 0.0 ;

  }
}
