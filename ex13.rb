require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome
url ="http://www.baidu.com"
#打开百度首页
driver.get(url)
#打印title
puts driver.title
#打印当前url
put driver.current_url
#打印当前代码
put driver.page_source
dr.quit()