Feature: Check Corporation feature

  Scenario: Check Corporation Verify Prompt Without Login
		Then I wait for 4 seconds
		When I press the "我的" textview
		Then I see the text "+验证"
		Given I press the "+验证" textview
		Then I see the text "请先登录才能进行企业客户认证"

  Scenario: Check Corporation Verify Prompt After Login
		Then I wait for 4 seconds
		When I press the "我的" textview
		Then I see the text "登录/注册"
		Given I press the "+验证" textview
		Then I see the text "请先登录才能进行企业客户认证"
		Given I wait for 2 seconds
		And I press the "登录/注册" textview
		When I enter text "18611054037" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		And I wait for 2 seconds
		Then I see the text "186****4037"
		Given I press the "+验证" textview
		Then I see the text "企业用户选填"
		Given I pull the listview
		And I push the listview
		Given I pull the listview
		And I press the "@ppdaba.com" textview
		Then I see the text "@ppdaba.com"
		Given I press the "确定" textview
		Then I see the text "请输入邮箱地址"
		Given I enter text "zhanglei" into field with id "user_name"
		And I press the "确定" textview
		Then I see the text "激活邮件已经发送至您的邮箱，请及时激活"
