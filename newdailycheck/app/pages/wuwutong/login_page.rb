#encoding: utf-8
class LoginPage < NewdailycheckPage
	page_url "http://user.55tuan.com/toLogin.no"
	
	text_field 'username', name: 'email'
	text_field 'password', name: 'password'
	text_field 'identifyingcode',name:'safecode_id'

	link 'login_btn', link_text: '登录', id: 'userLogin'

	def login user, password
		self.username = user
		self.password = password
		#sleep 10
        self.identifyingcode = 'XXXX'
		#sleep 10
		login_btn_element.click
		sleep 10
		turn_to FirstPage
	end
        
end

	
	
