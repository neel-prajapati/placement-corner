

$().ready(function() {
	 
	$("#company").validate({
		onfocusout: function(element) {
	         this.element(element);
	      },
	      
		rules : {
			location : {
				required : true,
				OnlyAlpha : true
			},
			
			stipend:{
				required : true,
				onlydigit : true
				
			},
			
			ctc:{
				required : true,
				onlydigit : true
				
			},
			
			
			job:{
				required:true,
				OnlyAlpha:true
			},
			
			cpi_ug:{
				required:true,
				
				onlydigit : true
				
				}
			,
			cpi_pg:{
				required:true,
				onlydigit : true
				
			}
		},
		messages : {
			location : {
				required : "Please Enter location."
				
			},
			
			stipend:{
				required:"Please Enter stipend."
			},
			ctc:{
				required:"Please Enter ctc."
			},
			job:{
				required:"Please Enter job."
			},
			cpi_ug:{
				required:"Please Enter UG cpi in number."
			},
			cpi_pg:{
				required:"Please Enter PG cpi in number."
			}
		}
	});
	
		
		
	$.validator.addMethod("OnlyAlpha", function(value, element) {
		return /^[A-Za-z]+$/.test(value);
	}, "Please Alpha Characters Only.");
	$.validator.addMethod("username", function(value, element) {
		return /^[A-Za-z0-9_.@#]+$/.test(value);
	}, "Please Enter a Valid Username.");
	$.validator.addMethod("email_add", function(value, element)
	{
		return this.optional(element) || /^[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,3}$/i.test(value);
	}, "Please enter a valid email address.");
	$.validator.addMethod("mobile_no",function(value,element)
			{
				return this.optional(element) || /^[9876]\d{9}$/i.test(value);
			},"Enter a Valid 10 Digit Indian Mobile No.");
	$.validator.addMethod("aadhar",function(value,element)
			{
				return this.optional(element) || /^[0-9]{12}$/i.test(value);
			},"Enter a Valid Aadhar Card Number");
	$.validator.addMethod("onlydigit",function(value,element)
			{
				return this.optional(element) || /^[0-9]{1,9}$/i.test(value);
			},"Only Digits are Allowed.");
	$.validator.addMethod("password",function(value,element)
	{
		return this.optional(element) || /^[A-Za-z0-9!@#$%^&*()_]{6,16}$/i.test(value);
	},"Please Enter Valid 6 to 16 Character Password.");
});    