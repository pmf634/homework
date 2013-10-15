#encoding: utf-8

class FirstPage < NewdailycheckPage
	page_url "http://www.55tuan.com"
	link 'login_name' , href:'http://user.55tuan.com/logout.no'
	span 'welcome', :class=>'Gray7'
end
