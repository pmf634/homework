#encoding: utf-8
require File.expand_path 'app/cases/spec_helper'
require File.expand_path 'app/cases/shared/login'

describe '购物流程', :wuwutuan do

	it 'should login' do
		data = test_data('login_user')
		user = data['demo']['name']
		password = data['demo']['password']
		
		login_page = $navi.goto_login_page
		first_page = login_page.login user,password
		first_page.login_name_element.text.should include ('退出')
	end
    it '购买55通商品流程' do
	    buynum = 2
	    paycode = 'ceshi007!'

		gooddetail_page = $navi.goto_gooddetail_page
	    buy_page = gooddetail_page.buygood
	    #打印出购买页面的title
	    puts buy_page.title
		#跳转到订单提交页
	    insertorder_page = buy_page.nextbuy
		sleep 10
		puts insertorder_page.title
		#跳转到支付成功页面
	    success_page = insertorder_page.buyflow

		success_page.window(:title=>'购买成功').use
		puts success_page.title
		puts success_page.reminddiv_element.text
		
		
	    success_page.title.should eql '购买成功'
	    success_page.reminddiv_element.text.should include ('恭喜您购买成功!')
	     sleep 10
      end
end

