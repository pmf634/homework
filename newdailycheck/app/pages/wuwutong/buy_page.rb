#encoding: utf-8

class BuyPage < NewdailycheckPage
	 #text_field 'buynum' ,id: 'productnum'
	 #link 'nextbtn', id: 'nextbtn'
	 link 'nextbtn',  id: 'nextbtn', link_text: '下一步'
	 def nextbuy 
	    nextbtn_element.click
	    sleep 10
	    turn_to InsertorderPage 
	 end
end

