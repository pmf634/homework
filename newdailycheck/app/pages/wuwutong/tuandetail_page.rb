#encoding: utf-8

class TuandetailPage < NewdailycheckPage
	span 'qukankan'   ,   :class => 'zt1'
	span 'guanggaozz', :class=>'close'
	def tiaozhuan
	  @browser.span(:class=>'zt1').click
	  sleep 10
	  @browser.windows.last.use do
	  
	  end
	  @browser.windows.first.close
	   #puts @browser.title
	   #puts @browser.url
	   turn_to IndexPage
	end

	def deleteguanggaozz
	     @browser.driver.manage.window.maximize
	     if guanggaozz_element.exists?
	        guanggaozz.element_click
	     end
	 end 
	 def ff
	   puts @browser.title
	 end
=begin
	 def clickguanggao
js =<<JS	
          q = document.getElementById("p22119");	
          q.style.display = "none";
JS
           if @browser.div(:id,"p22119").exists?		
             @browser.execute_script js 
	       end
		   
		   sleep 20
	end
=end	
end




   