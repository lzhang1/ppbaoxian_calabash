Feature: Login

  Scenario: Check Login Feature
		Then I wait for 4 seconds
		When I press the "我的" textview
		Then I see the text "登录"
		When I press the "登录" textview
		And I press the "登录" textview
		Then I see the text "请输入正确的手机号码"
