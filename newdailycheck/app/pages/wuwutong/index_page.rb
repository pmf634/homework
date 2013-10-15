#encoding: utf-8

class IndexPage < NewdailycheckPage
	span 'welcome', :class=>'Gray7'
	
	def puttitle
	 puts @browser.title
	end
end


   