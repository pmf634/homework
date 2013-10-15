#encoding: utf-8

class TuanPage < NewdailycheckPage
	page_url 'http://www.tuan800.com/wowotuan_beijing/'
	span :guanggao, :class=>'close'
	def deleteguanggao
	@browser.driver.manage.window.maximize
	  guanggao_element.click
	end
	  def clickwowotuan
	   #@browser.driver.manage.window.maximize
	   @browser.divs(:class=>'deal')[0].links[1].click
	   @browser.windows.last.use
	   sleep 10
	   @browser.windows.first.close
	    turn_to TuandetailPage
	  end
=begin	def clickpage
	   @browser.driver.manage.window.maximize
js =<<JS	
          q = document.getElementById("p22119");	
          q.style.display = "none";
JS
           if @browser.div(:id,"p22119").exists?		
             @browser.execute_script js 
	       end
		   #class popwin
		   sleep 5
	end
=end
end
 
   
	