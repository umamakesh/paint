<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp"%>


				<form:form commandName="billingAddress" action="payment" class="form-horizaontal">
				 <div class="span9 margin-top">
                   <div class="span9 center margin-bottom"> 
					<legend>Billing Address </legend>
					 
					  <div class="control-group">
						<label class="control-label">House Number</label>
						<div class="controls docs-input-sizes">
						 <input name="houseNumber" id="houseNumber" class="form-Control" reqired="true"/>
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Address Line 1</label>
						<div class="controls docs-input-sizes">
						 <input name="addressLine1" id="addressLine1" class="form-Control" reqired="true"/>
						</div>
					  </div>	
					  <div class="control-group">
						<label class="control-label">Address Line 2</label>
						<div class="controls docs-input-sizes">
						 <input name="addressLine2" id="addressLine2" class="form-Control" reqired="true" />
						</div>
					  </div>	
					   <div class="control-group">
						<label class="control-label">City</label>
						<div class="controls docs-input-sizes">
						  <input name="city" id="city" class="form-Control" reqired="true" />
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">State</label>
						<div class="controls docs-input-sizes">
						  <input name="state" id="state" class="form-Control" reqired="true" />
						</div>
					  </div>					  
					  <div class="control-group">
						<label class="control-label">Country</label>
						<div class="controls docs-input-sizes">
							<input name="country" id="country" class="form-Control" reqired="true" />
						</div>
					  </div>
					  <div class="control-group">
						<label class="control-label">Zipcode</label>
						<div class="controls docs-input-sizes">
							<input name="zipCode" id="zipCode" class="form-Control" reqired="true" />
						</div>
					  </div>
					<input type="submit" name="_eventId_submitpayment" class="btn btn-md btn-success" value="Save">
					<input type="reset" name="_eventId_cancel" class="btn btn-md btn-danger" value="Cancel">
					</div></div>
					    </form:form>
		
