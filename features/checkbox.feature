Feature: Checkbox feature

  Scenario: Check and Uncheck checkbox
		Then I wait for 3 seconds
		When I press the "线路" textview
		Then I see the text "查看凭证"
		Given I press view with id "start_name"
		Then I see the text "预订"
		When I try to switch all the checkbox with id "ticket_stop_icon"
		And I scroll "down" 2 times
		And I press the "确认并支付" textview
		Then I see the text "登录"
		When I enter text "18611054037" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		Then I see the text "确认并支付"
		When I press the "确认并支付" textview
		Then I see the text "请先选择购买日期"
		When I go back
		And I press view with id "start_name"
		And I scroll "down" 2 times
		And I try to check all the date
		Then I check coupon with text "暂无可用优惠券"
		When I press the "确认并支付" textview
		Then I see the text "没有安装微信客户端"		
