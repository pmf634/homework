#encoding: utf-8
require File.expand_path 'app/cases/spec_helper'
require File.expand_path 'app/cases/shared/login'

describe '购物流程', :disanfang do
    it 'tuan800跳转'  do
	   tuan_page = $navi.goto_tuan_page
	   #tuan_page.clickpage
	   tuan_page.deleteguanggao
	   tuandetail_page = tuan_page.clickwowotuan
	   tuandetail_page.deleteguanggaozz
	   index_page = tuandetail_page.tiaozhuan 
	   index_page.puttitle
      
       #Wuwutuanindex_Page.welcome_element.text.should include ('欢迎来到窝窝团')
	
      end
end

