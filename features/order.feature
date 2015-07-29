Feature: Forget Password feature

  Scenario: Check Order Without Login
		Then I wait for 3 seconds
		When I press the "我的" textview
		Then I see the text "我的订单"
		Given I press the "我的订单" textview
		Then I see the text "请先登录才能查看我的订单"


	Scenario: Check Order After Login
		Then I wait for 3 seconds
		When I press the "我的" textview
		And I press the "登录/注册" textview
		When I enter text "13366443852" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		And I wait for 3 seconds
		Then I see the text "133****3852"
		Given I press the "我的订单" textview
		Then I see the text "您尚未预订，快快行动吧！"
		When I go back
		Then I see the text "133****3852"
