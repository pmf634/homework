#encoding: utf-8
require 'watir-webdriver'
 
describe 'Create Post' do
  before :all do
		puts 'start browser'
		@b = Watir::Browser.new :chrome
		@password = @user_name = 'admin'
	end
 
	before :each do
		login(@b, @user_name, @password)
	end
 
	it 'should login successfully' do
		# String#include
		@b.title.should include('仪表盘')
		@b.link(:href, 'http://localhost/wordpress/wp-admin/profile.php').text.should include(@user_name)
	end
	it 'should create post successfully' do
		post_title = "my post created at #{Time.now.to_s}"
		content = 'this is my post'
 
		create_post(@b, post_title, content)
		@b.div(:id, 'message').text.should include('文章已发布')
	end
 
	it 'should create post successfully and verify post list page' do
		post_title = "my post created at #{Time.now.to_s}"
		content = 'this is my post'
 
		create_post(@b, post_title, content)
 
		# 跳转到文章列表页面
		list_url = 'http://localhost/wordpress/wp-admin/edit.php'
		@b.goto list_url
		@b.table(:class, 'wp-list-table')[2][1].text.should eql(post_title)
	end
 
	it 'should move all posts to garbige' do
		post_title = "my post created at #{Time.now.to_s}"
		content = 'this is my post'
		create_post(@b, post_title, content)
 
		# 跳转到文章列表页面
		list_url = 'http://localhost/wordpress/wp-admin/edit.php'
		@b.goto list_url
		@b.checkbox(:id, 'cb-select-all-1').set true	
		@b.select(:name, 'action').options.last.click
		@b.button(:id, 'doaction').click
		@b.table(:class, 'wp-list-table').rows.size.should eql(3)
	end
 
	def login(browser, user_name, password)
		login_url = 'http://localhost/wordpress/wp-login.php'
		browser.goto login_url
		browser.text_field(:id, 'user_login').set user_name
		browser.text_field(:id, 'user_pass').set password
		browser.button(:id, 'wp-submit').click
	end
 
	def create_post(browser, post_title, content)
		create_post_url = 'http://localhost/wordpress/wp-admin/post-new.php'
		browser.goto create_post_url	
		browser.text_field(:name, 'post_title').when_present.set post_title
		script = "document.getElementById('content_ifr').contentWindow.document.body.innerHTML='#{content}'"
		browser.wd.execute_script(script)
		browser.button(:name, 'publish').when_present.click
	end
 
	after :all do
		@b.close
	end
end