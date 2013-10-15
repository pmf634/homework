#encoding: utf-8

class InsertorderPage < NewdailycheckPage
	#checkbox 'account' ,    id: 'overage'
	text_field 'paypwd' ,  id:'paymentPswd'
    div 'notice' , :class=>'iebox' 
	link 'confirm' , :class=>'gobuy'
	def buyflow  
	   self.paypwd = 'ceshi007!'
	   notice_element.click
	   confirm_element.click
	   sleep 10
	   turn_to SuccessPage
	end
end

 