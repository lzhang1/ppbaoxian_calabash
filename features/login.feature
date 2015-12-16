Feature: Login

  Scenario: Check Login Feature
		Then I wait for 4 seconds
		When I press the "我的" textview
		Then I see the text "登录"
