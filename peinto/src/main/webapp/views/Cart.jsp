<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
<%@ include file="header.jsp"%><br>

<div > 
					<h3>Items in your cart</h3>
					</div>
<div  ng-app="addToCartApp"  ng-controller = "addToCartCtrl"  ng-init="retrieveCart('${cartId}')">
	 
	 <div >
        <table class="table table-bordered table-striped fs13" >
		  <thead>
			  <tr>
			  <th>Product</th>
				<th >Unit Price</th>
				<th>Quantity</th>
				<th>Total Price(in Rs.)</th>
				<th>Action</th>
			  </tr>
			</thead>
			<tbody>
				<tr ng-repeat = "items in cart.cartItems">
						<td>{{items.name}}</td>
						<td>{{items.price}}</td>
						<td>{{items.quantity}}</td>
						<td>{{items.totalPrice}}</td>
						<td><button class="btn btn-danger btnAction" ng-click="removeItemFromCart('${items.id}')">
							<span class="glyphicon glyphicon-remove"></span>remove</button></td>
					</tr>
			 <tr>
                    <td></td>
                    <td></td>
					<td></td>
                    <td>Grand Total(in Rs.)</td>
                    <td>{{GrandTotalOfItems()}}</td>
                </tr> 
			</tbody> 
		  </table>
		  
		  

          <div class="row">
		  <div class="span3">
             <a href="<spring:url value="/" />" class="btn btn-primary center">Continue Shopping</a>
			</div>	
			<div class="span3">
             <a href="<spring:url value="/billingAddress"/>"
                   class="btn btn-success center"><span class="glyphicon-shopping-cart glyphicon"></span> Check out
                </a>
			</div>	  
			<div class="span2">
           <a class="btn btn-danger center" ng-click="clearCartItems()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
			</div>		  
			
        </div>
		</div>
      </div>     

 
<script>
 var cartApp = angular.module ("addToCartApp", []);

 cartApp.controller("addToCartCtrl", function ($scope, $http){
 	
 	 /*
      * retrieveCart method is used to get all cart items at the starting of the application
      */
     $scope.retrieveCart = function (cartId) {
 		console.log(cartId);
         $scope.cartId = cartId;
         $scope.refreshCartItems(cartId);
     };
     
     
     /*
      * removeItemFromCart method is used to remove a item from the cart
      */
     $scope.removeItemFromCart = function (id) {
    	 console.log("inside remove cart")
    	 console.log(id)
         $http.put('http://localhost:9080/peinto/categoryDropdown/productDisplay/usercart/cart/removeItem/'+id).success(function (data) {
             $scope.refreshCartItems();
         });
     };

 	 /*
      * addItemToCart method is used to add items into the cart
      */
     $scope.addItemToCart = function (id) {
         $http['delete']('http://localhost:9080/peinto/usercart/cart/addItem/'+id).success(function (data) {
             alert("Item added to the cart!")
         });
     };
    
    
     /*
      * GrandTotalOfItems method is called on cart page to calculate grand total for the added items
      */
     $scope.GrandTotalOfItems = function () {
         var grandTotal=0;

         for (var i=0; i<$scope.cart.cartItems.length; i++) {
             grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }

         return grandTotal;
     };
     /*
 	 * refreshCartItems method is called by others methods in same controller to refresh the cart
 	 */
     $scope.refreshCartItems = function () {
         $http.get('http://localhost:9080/peinto/categoryDropdown/productDisplay/usercart/cart/refreshCart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
         });
     };
     
     /*
      * clearCartItems method is used to delete all items from the cart
      */
     $scope.clearCartItems = function () {
     	$http['delete']('http://localhost:9080/peinto/categoryDropdown/productDisplay/usercart/cart/clearCartItems/'+$scope.cartId).success(function (data)
     			{$scope.refreshCartItems()
     		});
     };
 });

</script>
 </body>
</html>