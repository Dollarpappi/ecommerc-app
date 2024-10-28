
class TPricingCalculator{

  //...Calulate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;

  }

  //..calculate shipping cost 
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toString();
  }
 /// ...calculate tax
 static String calculateTax(double productPrice, String location){
  double taxRate = getTaxRateForLocation(location);
  double taxAmount = productPrice * taxRate;
  return taxAmount.toStringAsFixed(2);
 }

 static double getTaxRateForLocation(String location){
  //lookup the tax rate for the given location from a tax rate database or api
  //return the appropraite tax ratio
  return 0.10;
 }

 static double getShippingCost(String location){
 //lookup the shipping cost for the given location using a shipping rate api
 //calculate the shipping cost based on various factors like distance, weight, etc 
  
  return 5.00;
 }
}