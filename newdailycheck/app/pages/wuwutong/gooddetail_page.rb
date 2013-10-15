#encoding: utf-8

class GooddetailPage < NewdailycheckPage
	page_url "http://jinzhou.55tuan.com/goods-f7a28abefdc75181.html"
	link 'buy' , link_text: '抢购'
	def buygood
	   buy_element.click
	   turn_to BuyPage
	end
end

