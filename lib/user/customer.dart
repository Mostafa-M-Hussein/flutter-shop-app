//@dart=2.9
import 'package:flutter_shop/order/order_controller.dart';
import 'package:flutter_shop/prodcut/prodcutController.dart';
import 'package:flutter_shop/user/address.dart';
import 'user.dart';
import 'package:flutter_shop/order/base_order.dart';
import 'package:flutter_shop/prodcut/base_product.dart';

class Customer  extends User {
   Address shppingAddress ;
   List<BaseProdcut> watchList ;
   List <BaseOrder> orders;
   Address bilingAddress ;

  Customer(String id,
      String firstname,
      String lastname,
      String email,
      String phone,
      String gender,
      Address shipingAddress,
      Address bilingAddress,
      List <BaseProdcut> watchList ,
      List <BaseOrder> orders,)
      : super(id, firstname, lastname, email, phone, gender) {
    this.shppingAddress = shipingAddress;
    this.bilingAddress = bilingAddress;
    this.orders = orders;
    this.watchList = watchList;
  }

  Customer.fromJson(Map <String, dynamic> JsonObject):super(
      JsonObject['id'],
      JsonObject['first_name'],
      JsonObject['last_name'],
      JsonObject['email'],
      JsonObject['phone'],
      JsonObject['gender']){
      this.shppingAddress  =Address.fromJson(   JsonObject['address']   );
      this.bilingAddress = Address.fromJson(   JsonObject['biling_address'] );
      this.watchList = ProductController.toProducts(JsonObject['wath_list'] )  ;
      this.orders = OrderController.toOrders(JsonObject['orders'])  ;
      }

}


