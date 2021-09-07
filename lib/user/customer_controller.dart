import 'package:flutter_shop/user/customer.dart';
import 'customer.dart';
import 'user.dart';
import 'package:flutter_shop/order/base_order.dart';
import 'package:flutter_shop/prodcut/base_product.dart';

class CustomerController

{

  Customer customer ;
  CustomerController
      (this.customer)  ;

  void addToOrders(BaseOrder order) {
    this.customer.orders.add(order);
  }

  void addToWatchList(BaseProdcut prodcut) {
    this.customer.watchList.add(prodcut);
  }

  bool orderInOrders(BaseOrder order) {
    return this.customer.orders.contains(order);
  }

  bool productInWatchList(BaseProdcut prodcut) {
    return this.customer.watchList.contains(prodcut);
  }


  bool  removeProdcutFromWatchList (BaseProdcut prodcut )
  {

    return this.customer.watchList.remove(prodcut) ;
  }



}